# сервер gunicorn необходимо запускать из директории в которой лежит этот файл
# для запуска  sudo gunicorn -b 0.0.0.0:8080 hello:fun

def fun(environ, start_response):
    status = '200 OK'
    response_headers = [('Content-type', 'text/plain')]
    start_response(status, response_headers)
    body = [(i + '\n') for i in environ['QUERY_STRING'].split('&')]
#    body = [bytes(i + '\n', 'ascii') for i in environ['QUERY_STRING'].split('&')]  # для Python 2.7
    return body
