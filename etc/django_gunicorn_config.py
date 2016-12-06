CONFIG = {                                                                                                   
    'mode': 'wsgi',                                                                                       
    'working_dir': '/home/box/web/ask',                                                                       
    # 'python': '/usr/bin/python',                                                                           
    'args': (                                                                                               
        '--bind=0.0.0.0:8000',
        '--daemon',
        '--workers=2',                                                                                     
        '--timeout=5',
        '--access-logfile=/home/box/web/logs/gunicorn.access.log', 
        '--error-logfile=/home/box/web/logs/gunicorn.error.log',
        '--log-level=info',
        'ask.wsgi:application',                                                                                       
    ),                                                                                                       
}
