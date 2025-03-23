D3D9_META STRUCT
	dll			QWORD	?
	Direct3DCreate9		QWORD	?
	Direct3DCreate9Ex	QWORD	?
D3D9_META ENDS

EXTERN d3d9meta: STRUCT

.CODE
_Direct3DCreate9 proc
    jmp (D3D9_META PTR d3d9meta).Direct3DCreate9
_Direct3DCreate9 endp

_Direct3DCreate9Ex proc
    jmp (D3D9_META PTR d3d9meta).Direct3DCreate9Ex
_Direct3DCreate9Ex endp
END
