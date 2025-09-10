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


pattern city: "Chennai, TamilNadu, India" 
pattern salary: "80k - 100k Euros" 
# Office specific
pattern retest this please: 'retest this please'
pattern retest coverity: "retest coverity"
pattern retest bundle: "retest bundle size"
pattern retest default: "retest default"
pattern retest linters: "retest linters"
pattern retest threads: "retest threads-addon"
pattern retest common: "retest common-addon"
pattern retest ember compatibility: "retest ember compatibility"
pattern path authenticate custom objects: 'api/channel/v2/authenticate/custom_objects'
pattern path custom objects schemas: 'a/custom-objects/schemas/'

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

template recruiter connect:
  insert("""Hi Cormac Fagan,

  I hope you are doing great.I am interested in the Senior Frontend Engineer role you posted recently (https://tinyurl.com/28b6oldn). And I am confident that I can add great value to your company.
  So would you be willing for a quick chat regarding this position ?
  
  Best regards,
  A. Sandeep Joel, Freshworks""")

template developer connect:
  insert("""Hi Amy,
  I am Sandeep Joel and I know that we've not met but when I was searching for Senior Frontend Engineer jobs in Europe I came across your company, and I just wanted to know about culture and work live balance of your company. """)

template developer referral:
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