# Outside comment
name = "Grace_kid.py"
source_code = '# Outside comment\nname = "Grace_kid.py"\nsource_code = %r\nmain = lambda f: f.write(source_code %% source_code)\nmain(open(name, "w"))\n'
main = lambda f: f.write(source_code % source_code)
main(open(name, "w"))
