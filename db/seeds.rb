
User.create(
  name: 'Avi Flombaum',
  email: 'avi@flatironschool.com',
  password: '123456',
  password_confirmation: '123456'
)
User.create(
  name: 'Yukihiro Matsumoto',
  email: 'matz@mruby.org',
  password: '123456',
  password_confirmation: '123456'
)
User.create(
  name: 'David Heinemeier Hansson',
  email: 'dhh@basecamp.com',
  password: '123456',
  password_confirmation: '123456'
)
User.create(
  name: 'Chris Metzger',
  email: 'cmetzger@flatironschool.com',
  password: '123456',
  password_confirmation: '123456'
)
User.create(
  name: 'Jennifer Hansen',
  email: 'jenn@flatironschool.com',
  password: '123456',
  password_confirmation: '123456'
)
User.create(
  name: 'Howard Devennish',
  email: 'HowD@flatironschool.com',
  password: '123456',
  password_confirmation: '123456'
)
User.create(
  name: 'Enoch',
  email: 'enoch@flatironschool.com',
  password: '123456',
  password_confirmation: '123456'
)
User.create(
  name: 'Kim Jong-Un',
  email: 'supreme@leader.com',
  password: '123456',
  password_confirmation: '123456'
)
User.create(
  name: 'Donald J. Trump',
  email: 'shouldhavestayed@trumptowers.com',
  password: '123456',
  password_confirmation: '123456'
)

FlatironModule.create(branch: 'ruby', name: 'Ruby')
FlatironModule.create(branch: 'sinatra', name: 'Sinatra')
FlatironModule.create(branch: 'rails', name: 'Rails')
FlatironModule.create(branch: 'javascript', name: 'Javascript')
FlatironModule.create(branch: 'react', name: 'React')
FlatironModule.create(branch: 'personal', name: 'Personal')

my_modules = %w[Ruby Sinatra Rails Javascript React Personal]
project_names = [
  'Basecamp', 'mruby', 'streem', 'Ruby on Rails', 'Abiquo', 'AdaControl',
  'Berkeley DB', 'Cloudify', 'Docker', 'db4o', 'Elasticsearch', 'EyeOS',
  'ForgeRock', 'Git', 'Hadoop', 'InfluxDB', 'Jumper 2.0', 'Kaltura', 'Kafka',
  'Liferay Portal', 'MariaDB', 'OpenBravo', 'Odoo', 'Project.net', 'Puppet',
  'Spark', 'Squiz', 'TiDB', 'Ubuntu', 'Zmanda', 'Wordpress', 'LongPress',
  'Varnish'
]
description_filler = [
  'Open-source BI solution for corporate performance management and OLAP-based planning, analysis, consolidation and reporting.',
  'Business intelligence, data mining, data integration, analytics, reporting, and dashboards',
  'HTML5 mobile app framework','Enterprise server and client Linux distribution',
  'Framework for building CRM/ERP web applications, Business Information Manager (BIM)',
  'Source-code controller and coding standard checker for Ada',
  'Enterprise content management, web content management', 'Web Content Management System',
  'Database front-end applications generator','JAX-WS 2.0 service-enablement framework',
  'DHCP client/server/relay software',
  'Data mining software written in Java, fully integrating Weka, featuring 350+ operators for preprocessing, machine learning, visualization, etc. – the previous version is available as open-source',
  'Quantum chemical and molecular dynamics software, efficient simulation of large systems involving millions of atoms',
  'A web application framework', 'The most popular web server', 'Log file parser and analyzer',
  "Tool for browsers", "Fast, feature-rich HTTP server", 'Powerful HTTP/HTTPS/FTP/FTPS loading and testing tool',
  'FileZilla - FTP', 'Secure, high performance, and easy-to-configure HTTP server',
  'HTTP File Server – ', 'User-friendly file server software, with a drag-and-drop interface',
  'lighttpd – Resource-sparing, but also fast and full-featured, HTTP Server',
  'CFML application server', 'Lightweight, high performance web server/reverse proxy and e-mail (IMAP/POP3) proxy',
  'Internet application server', 'Qcodo – PHP5 framework', 'Squid (software) – Web proxy cache',
  'Fast, Java-based framework for creating web applications', 'High-performance web application',
  'accelerator/reverse proxy and load balancer/HTTP router',
  'XAMPP – Package of web applications including Apache and MariaDB',
  'Zope – Web application server'
]
youtube_links = %w[Gm9RUgT_H8I LIFXMGaRSN4 HzGcuskdnm8 QmTKQb_4mb0 5HDgVWl_kQI
                   Yzu5_hBFwo S39vjjPsb3o UYB5SAbw_yw djHPcnEtOhI sVbDJ5y8Q-M
                   cVWOIFl7wvw dQw4w9WgXcQ]
learn_repos = %w[nsync-fs railway-ipc-gem learn-lint learn-doctor learn-open
                 learn-test railway_ui learn-browser help-center learn-ide-tree
                 mastermind mirage term.js]
100.times do
  Project.create(
    title: project_names[rand(project_names.size)],
    description: description_filler[rand(description_filler.size)] + '. ' + description_filler[rand(description_filler.size)],
    github: 'http://github.com/learn-co/' + learn_repos.sample,
    youtube: 'http://www.youtube.com/embed/' + youtube_links.sample,
    user_id: rand(1..9),
    flatiron_module_id: rand(1..6)
  )
end
