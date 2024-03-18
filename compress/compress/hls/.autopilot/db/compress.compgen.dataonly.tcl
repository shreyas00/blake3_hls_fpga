# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_ctrl {
chaining_value { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
block_words { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
counter { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
block_len { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 52
	offset_end 59
}
flags { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 60
	offset_end 67
}
out_r { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 68
	offset_end 79
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict ctrl $port_ctrl


