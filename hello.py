# coding: utf-8


def application(env, start_response):
    start_response('200 OK', [('Content-Type', 'text/plain')])
    return env['QUERY_STRING'].split('&')