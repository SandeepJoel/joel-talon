from talon.engines.macsf import MacSFEngine
from talon import speech_system

engine = MacSFEngine()
speech_system.add_engine(engine)