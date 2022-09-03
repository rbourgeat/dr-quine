# Outside comment

def additional_function():
	source_code = '# Outside comment\n\ndef additional_function():\n\tsource_code = %r\n\tprint(source_code %% source_code)\n\ndef main():\n\t# Inside comment\n\tadditional_function()\n\nmain()'
	print(source_code % source_code)

def main():
	# Inside comment
	additional_function()

main()
