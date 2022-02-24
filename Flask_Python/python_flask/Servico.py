import os
 
def env_list():
    return os.popen('env').read()

def create_var_linux(variable,content):
        var = variable + '=' + content
        os.popen('export' + var)
        return var

def list_running_software():
    return os.popen('ps aux').read()