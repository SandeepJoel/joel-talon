import os

from talon import Module, actions, app, clip, cron, ctrl, imgui, noise, ui
from talon_plugins import eye_mouse, eye_zoom_mouse
from talon_plugins.eye_mouse import config, toggle_camera_overlay, toggle_control

key = actions.key
self = actions.self
scroll_amount = 0

scroll_job = None
gaze_job = None
control_mouse_forced = False


mod = Module()
mod.list(
    "mouse_button", desc="List of mouse button words to mouse_click index parameter"
)
mod.tag(
    "mouse_cursor_commands_enable", desc="Tag enables hide/show mouse cursor commands"
)
setting_mouse_enable_pop_click = mod.setting(
    "mouse_enable_pop_click",
    type=int,
    default=0,
    desc="Enable pop to click when control mouse is enabled.",
)
setting_mouse_enable_pop_stops_scroll = mod.setting(
    "mouse_enable_pop_stops_scroll",
    type=int,
    default=0,
    desc="When enabled, pop stops continuous scroll modes (wheel upper/downer/gaze)",
)
setting_mouse_wake_hides_cursor = mod.setting(
    "mouse_wake_hides_cursor",
    type=int,
    default=0,
    desc="When enabled, mouse wake will hide the cursor. mouse_wake enables zoom mouse.",
)
setting_mouse_hide_mouse_gui = mod.setting(
    "mouse_hide_mouse_gui",
    type=int,
    default=0,
    desc="When enabled, the 'Scroll Mouse' GUI will not be shown.",
)
setting_mouse_continuous_scroll_amount = mod.setting(
    "mouse_continuous_scroll_amount",
    type=int,
    default=300,
    desc="The default amount used when scrolling continuously",
)
setting_mouse_wheel_down_amount = mod.setting(
    "mouse_wheel_down_amount",
    type=int,
    default=120,
    desc="The amount to scroll up/down (equivalent to mouse wheel on Windows by default)",
)
setting_mouse_wheel_horizontal_amount = mod.setting(
    "mouse_wheel_horizontal_amount",
    type=int,
    default=40,
    desc="The amount to scroll left/right",
)

continuous_scoll_mode_x = ""


@imgui.open(x=700, y=0)
def gui_wheel(gui: imgui.GUI):
    gui.text(f"Scroll mode: {continuous_scoll_mode_x}")
    gui.line()
    if gui.button("Wheel Stop [stop scrolling]"):
        stop_scroll()


@mod.action_class
class Actions:
    def mouse_scroll_stop_horizontal():
        """Stops scrolling"""
        stop_scroll()

    def mouse_scroll_right_continuous():
        """Scrolls down continuously"""
        global continuous_scoll_mode_x
        continuous_scoll_mode_x = "scroll right continuous"
        mouse_scroll(setting_mouse_continuous_scroll_amount.get())()

        if scroll_job is None:
            start_scroll_x()

        if setting_mouse_hide_mouse_gui.get() == 0:
            gui_wheel.show()


    def mouse_scroll_left_continuous():
        """Scrolls up continuously"""
        global continuous_scoll_mode_x
        continuous_scoll_mode_x = "scroll left continuous"
        mouse_scroll(-setting_mouse_continuous_scroll_amount.get())()

        if scroll_job is None:
            start_scroll_x()
        if setting_mouse_hide_mouse_gui.get() == 0:
            gui_wheel.show()


def mouse_scroll(amount):
    def scroll():
        global scroll_amount
        if continuous_scoll_mode_x:
            if (scroll_amount >= 0) == (amount >= 0):
                scroll_amount += amount
            else:
                scroll_amount = amount
        actions.mouse_scroll(0, int(amount))

    return scroll


def scroll_continuous_helper_horizontal():
    global scroll_amount
    # print("scroll_continuous_helper_x")
    if scroll_amount and (
        eye_zoom_mouse.zoom_mouse.state == eye_zoom_mouse.STATE_IDLE
    ):  # or eye_zoom_mouse.zoom_mouse.state == eye_zoom_mouse.STATE_SLEEP):
        actions.mouse_scroll(by_lines=False, x=int(scroll_amount / 10))


def start_scroll_x():
    global scroll_job
    scroll_job = cron.interval("60ms", scroll_continuous_helper_horizontal)
    # if eye_zoom_mouse.zoom_mouse.enabled and eye_mouse.mouse.attached_tracker is not None:
    #    eye_zoom_mouse.zoom_mouse.sleep(True)

def stop_scroll():
    global scroll_amount, scroll_job, gaze_job, continuous_scoll_mode_x
    scroll_amount = 0
    if scroll_job:
        cron.cancel(scroll_job)

    if gaze_job:
        cron.cancel(gaze_job)

    global control_mouse_forced
    if control_mouse_forced and config.control_mouse:
        toggle_control(False)
        control_mouse_forced = False

    scroll_job = None
    gaze_job = None
    gui_wheel.hide()

    continuous_scoll_mode_x = ""
