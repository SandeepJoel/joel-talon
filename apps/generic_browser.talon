tag: browser
-
tag(): user.find_and_replace
tag(): user.emoji

^address$: browser.focus_address()
[go] forward: 
  key(esc)
  browser.go_forward()
go (back | backward):
  key(esc)
  browser.go_back()

(refresh | reload): browser.reload()
(refresh | reload) hard: browser.reload_hard()
go to clipboard: browser.go(clip.text())
inspect: key(cmd-shift-c)

copy domain: 
  browser.focus_address()
  user.copyDomain(edit.selected_text())

copy end path: 
  browser.focus_address()
  user.copyPath(edit.selected_text())

copy leaf: 
  browser.focus_address()
  user.copyLeaf(edit.selected_text())

remove domain: 
  browser.focus_address()
  user.removeDomain(edit.selected_text())

remove end path: 
  browser.focus_address()
  user.removeEndPath(edit.selected_text())


google here <user.text>:
  browser.focus_address()
  insert(user.text)
  key(enter)

open here {user.website}:
   browser.focus_address()
   key(delete)
   sleep(200ms)
   insert(website)
   sleep(500ms)
   key(enter)

blind search that: 
  term = edit.selected_text()
  user.open_url('https://www.teamblind.com/search/' + '{term}')

git hunt <user.text>: 
  user.open_url("https://github.com/search?q={user.text}&type=repositories")

youtube hunt <user.text>: 
  user.open_url("https://www.youtube.com/results?search_query={user.text}")

youtube here <user.text>:
  browser.focus_address()
  insert('https://www.youtube.com/results?search_query={user.text}')
  key(enter)

glass door that:
  text = edit.selected_text()
  user.search_with_search_engine("https://www.google.com/search?q=%s", "glassdoor {text}")

translate:
  user.contextual_menu_open()
  sleep(200ms)
  key(t)

reveal: key(cmd-shift-p)
reveal [<user.text>]:
  key(cmd-shift-p)
  sleep(300ms)
  insert(user.text or "")
  sleep(300ms)
  key(enter)


pattern chennai: "Chennai, TamilNadu, India" 
pattern salary: "80k - 100k Euros" 
pattern notice: "60 days" 
pattern headline: "Lead Software Engineer - Frontend" 
template summary: "Inquisitive pragmatic engineer with 10 years of frontend experience In building UI interfaces using HTML5, CSS3, SCSS, CSS in JS and Javascript/Typescript/Node.js, with 5 yrs of ReactJS and 2 yrs of NextJs experience. Experimenting on leveraging AI tools like github copilot, claude, etc.. to improve code quality, frontend performance, follow design system, follow 95% code coverage with zero vulnerabilities." 


template hello sir:
  insert("Hello Sir,")
  key(enter)
  sleep(50ms)
  key(space:6)
  
template hello madam:
  insert("Hello Madam,")
  key(enter)
  sleep(50ms)
  key(space:6)

template regards:
  insert("Regards,")
  key(enter)
  sleep(50ms)
  insert("A.Sandeep Joel")

template rejection:
  insert("Hello Hiring Team,\nI understand that my application didnt move forward, and I wanted to thank you for taking the time to reply.\n\nTo be honest, I was a little disappointed not to have had the chance to showcase my skills. I have always admired your company values and positive reviews from your company employees in various job portals. And during my preparation for this opportunity, I pushed myself to grow stronger and fine tune my frontend engineering craft. In fact, I can say that the process of preparing for this interview already made me a better engineer, which Iam grateful for 😌.\n\nI completely understand how challenging the current job market is, and that you must receive countless applications from talented candidates. Still, I would be deeply grateful if you could share even a small insight into why my profile may not have been considered this time. Knowing this would help me learn, improve, and hopefully be a stronger fit for the future.")

template recruiter:
  insert("Hi ,\nI'm Sandeep Joel, a Lead Frontend Engineer with 10+ years of experience building software at Gartner and Freshworks. I am looking for a job in middle east countries.\n\nA bit about myself professional experience:\nCurrently serving as Lead Frontend Engineer at Gartner since January 2024. I have improved frontend performance by reducing the LCP metric in gartner.com homepage and in other 8 FE apps by 50%, impacting 100K active users, and resolved over 10 Snyk vulnerabilities to enhance security by 60%. Previously at Freshworks from 2016 to 2023 in roles progressing from Web Developer to Senior Frontend Engineer, I developed features with 100% code coverage following WCAG standards using A/B testing, feature flags and mentored teams.\n\nKey skills and achievements:\n- Expert in HTML5, CSS3, ReactJS (5+ years), NextJS (3+ years), Javascript (10+ years), Typescript (2+ years), Redux, Material UI, Styled Components, Tailwind, Jest, React Testing Library, Webpack, Storybook, Node.js, AWS, Azure and Distributed Systems.\n- Enabled protection against attacks like Clickjacking, SSL Stripping, XSS and CSRF.\n- Awards include Freshdesk Innovation Award Q4 2019 and MVP for 2018-2019;\n- Led organization-wide sessions on React and Next.js.\n- Strong in performance optimization, accessibility, security, and mentoring 3-5 engineers.\n- Migrated 7+ frontend apps from react 16 to react 19 and from material UI4 to material UI5 using codemods, github copilot(AI tools) and chrome devtools MCP server.\n- Designed a fully typed design system using React, TypeScript, Storybook, adopted by 8+ product engineering teams\n\nEach step reminded me that technology is most meaningful when it serves people. I really want to be a part of company which adds value to people.\nThat's why after going through your company website, its values and various employee reviews, I thought it would be nice to work with your company😊.\n\nHere's a little about me:\nLinkedIn: https://www.linkedin.com/in/sandeepjoel/\nPortfolio: https://linktr.ee/sandeepjoel\nIf there's a way I can bring value to your team, I'd be grateful for the chance to explore it further.\n\nWarm regards,\nSandeep Joel\n📩 sandeepjoelofficial@gmail.com\n📱 +91 9445484948")
  key(home)
  key(up:3)
  key(end)

template developer short:
  insert("""Hi Amy,
  I am Sandeep Joel and I know that we've not met but when I was searching for Senior Frontend Engineer jobs in Europe I came across your company, and I just wanted to know about culture and work live balance of your company. """)

template developer Medium:
  insert("""Hello Emily,
  Thanks for accepting my invitation. This is A.Sandeep Joel from Freshworks and I am currently looking for Senior Frontend Software Engineer role within Europe. So I wanted to know about the work life balance of your current company. And also will you be willing to refer me in your company for this position. https://www.linkedin.com/jobs/view/3686345540/?eBP=JOB_SEARCH_ORGANIC&refId=ZBXOSrsTwZCvbWhLYomW%2Fw%3D%3D&trackingId=S7QOYvE9olUAxBEnAr0Qdg%3D%3D&trk=flagship3_search_srp_jobs""")

template why this company:
  insert("I see this opportunity as a way to contribute to an exciting/forward-thinking organisation using my frontend software engineering skills.")

template why me:
  insert("""Below are the points about myself to indicate that I can add great value to your company:
  -  I am humbled to be known for creating pixel perfect UI interfaces using react .js and ember.js.
  - Love optimizing tooling software for enchancing developer productivity within any organisation.
  - I strongly believe that helping and mentoring others is the only way to grow.
  - Mastered the art of debugging complex open source libraries and fixed their issues.
  - I consider myself as life long learner.
  """)

template prompt cover letter:
  insert("""
  Below is the job description for Senior Front End Developer role in a company
  `
  {clip.text()}
  `
  
  And below is my resume so can you please write a cover letter for me to increase the chances of receiving the interview call ?
  `A.Sandeep Joel 
  Address:  No.51, 12 street, Astalakshmi nagar, Alapakkam, Chennai - 116, India
  Contact: +91 9445484948 
  sandeepjoelofficial@gmail.com
  
  www.linkedin.com/in/sandeepjoel/
  Github:
  https://github.com/SandeepJoel
  Portfolio:
  https://linktr.ee/sandeepjoel
  EXPERIENCE
  Freshworks  — Senior Frontend Software Engineer
  OCT 2019 - PRESENT
  Streamlined user experience by analyzing over 20+ user flows and creating 50+ user stories with clear specifications and reduced UI/UX issues by 45% along with 100% code coverage following WCAG accessibility standards
  Mentored a team of 3-5 engineers to the freshdesk's Ember.js and React.js codebases through code reviews and guided them to enhance their debugging skills. 
  Optimized ember (broccoli) processes to improve the development server cold build times by 50% (from 19 mins to just 9 mins). 
  Engineered solutions to build a zapier-like integration UI builder tool in React (with SVG and Canvas elements from Joint.js) inside an existing Ember app using production ready micro-frontend architecture.
  Made 3 open source contributions to voice coding software(talon).- 
  Improved app's performance by reducing the bundle sizes by implementing auto importing on large third party libraries like HighchartsJS. Achieved improvement of 1000ms in first DOM paint..
  Helped in the complete test case migration from Mocha to Qunit using custom codemods, which reduced a lot of random failures in the frontend test pipeline in the testing environment. 

  Freshworks  — Software Frontend Engineer
  JAN 2019 - SEP 2019
  Developed a couple of features to enhance the Freshdesk product's search experience by 30%.
  SentryJS was capturing non-supported browser-list errors. To prevent this further, I Implemented a solution to capture errors only related to our supported browsers only, thereby saving 15k events every month.

  Freshworks  — Web Developer
  JUNE 2016 - DEC 2018
  Implemented Medium-based progressive image loading across the entire company (freshworks.com) website containing 400 URLs.
  Optimized development environment of Middleman tool to handle web-projects involving heavy assets (like images, fonts, etc..) consisting of 1 GB using Grunt.
  Developed and deployed https://madeinmadras.in/ in 5 hours. This project request and deadline came at a very short notice, since it needed to be launched on Madras day, using HTML, CSS, JS and Middleman.
  Moved the serving of websites from AWS S3 to AWS EC2 instances using EBS as storage. Moved from Travis CI to Blue-Green pipeline in AWS EC2 instance for building and deploying. Previously deployments would take around 3 hours, but  using the new pipeline this process always took around 8.5 minutes, which yielded around a 20x times increase in speed. This pipeline was automated by chef scripts.

  AWARDS & ACHIEVEMENTS
  
  I was privileged to receive “Freshdesk - Innovation award Q4 2019”.
  
  Recognized as MVP(Most Valuable Player) for the year 2018 & 2019.
  EDUCATION
  Anna University
  JUNE 2012 - JUNE 2016
  B.Tech Information Technology - CGPA - 7.43/10
  HOBBY PROJECTS
  Chrome new tab extension with creative effects and todo application
  https://github.com/SandeepJoel/boringToDo
  Unpublished website for a client (with css transitions and canvas animations)
  https://naughty-joliot-ede2eb.netlify.app/
  
  
  
  SKILLS
  HTML5, CSS3, SASS/SCSS, JQuery, SVG, Canvas, JSON, RestAPI, Bootstrap, Agile Scrum, Tailwind, Javascript (ES6), Babel, Typescript, GIT, Webpack, Firebase, Ember.js, React.js, React hooks, React context API, Redux, React Suspense, Jest, Cypress Mocha, Qunit, Grunt, Npm, Yarn, Travis CI, Jenkins, Nginx, Chef recipes, SEO best practices, Shell scripts, AWS Opsworks, Jenkins, Middleman, Ruby on rails and Node.js, Docker, Github actions, Chrome Dev tools, Next.js, Nx (mono repo), WCAG standards, AST, Codemods, Data structures, Algorithms`
  """)
  # key(enter)