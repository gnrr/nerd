        db  5h,  1h                ; USAGE_PAGE (Generic Desktop)
        db  9h,  6h                ; USAGE (Keyboard)
        db a1h,  1h                ; COLLECTION (Application)
        db  5h,  7h                ;   USAGE_PAGE (Keyboard)
        db 19h, e0h                ;   USAGE_MINIMUM (Keyboard LeftControl)
        db 29h, e7h                ;   USAGE_MAXIMUM (Keyboard Right GUI)
        db 15h,  0h                ;   LOGICAL_MINIMUM (0)
        db 25h,  1h                ;   LOGICAL_MAXIMUM (1)
        db 75h,  1h                ;   REPORT_SIZE (1)
        db 95h,  8h                ;   REPORT_COUNT (8)
        db 81h,  2h                ;   INPUT (Data,Var,Abs)
        db 95h,  1h                ;   REPORT_COUNT (1)
        db 75h,  8h                ;   REPORT_SIZE (8)
        db 81h,  3h                ;   INPUT (Cnst,Var,Abs)
        db 95h,  5h                ;   REPORT_COUNT (5)
        db 75h,  1h                ;   REPORT_SIZE (1)
        db  5h,  8h                ;   USAGE_PAGE (LEDs)
        db 19h,  1h                ;   USAGE_MINIMUM (Num Lock)
        db 29h,  5h                ;   USAGE_MAXIMUM (Kana)
        db 91h,  2h                ;   OUTPUT (Data,Var,Abs)
        db 95h,  1h                ;   REPORT_COUNT (1)
        db 75h,  3h                ;   REPORT_SIZE (3)
        db 91h,  3h                ;   OUTPUT (Cnst,Var,Abs)
        db 95h,  6h                ;   REPORT_COUNT (6)
        db 75h,  8h                ;   REPORT_SIZE (8)
        db 15h,  0h                ;   LOGICAL_MINIMUM (0)
        db 25h, 65h                ;   LOGICAL_MAXIMUM (101)
        db  5h,  7h                ;   USAGE_PAGE (Keyboard)
        db 19h,  0h                ;   USAGE_MINIMUM (Reserved (no event indicated))
        db 29h, 65h                ;   USAGE_MAXIMUM (Keyboard Application)
        db 81h,  0h                ;   INPUT (Data,Ary,Abs)
        db c0h                     ; END_COLLECTION