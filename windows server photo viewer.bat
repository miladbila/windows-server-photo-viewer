if exist "C:\Program Files (x86)" (
    if not exist "C:\Program Files (x86)\Windows Photo Viewer" (
        Xcopy "Windows Photo Viewer 86" "C:\Program Files (x86)\Windows Photo Viewer" /E /H /C /I
    )
    if not exist "C:\Program Files\Windows Photo Viewer" (
        Xcopy "Windows Photo Viewer" "C:\Program Files\Windows Photo Viewer" /E /H /C /I
    )
) else (
    if not exist "C:\Program Files\Windows Photo Viewer" (
        Xcopy "Windows Photo Viewer 86" "C:\Program Files\Windows Photo Viewer" /E /H /C /I
    )
)
REG IMPORT "MS PhotoViewer.bmp.reg"
REG IMPORT "MS PhotoViewer.jpe.reg"
REG IMPORT "MS PhotoViewer.jpeg.reg"
REG IMPORT "MS PhotoViewer.jpg.reg"
