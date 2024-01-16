x = input("File name: ")
x = x.strip()
x = x.lower()

if ".gif" in x:
    y = "image/gif"
elif ".jpg" in x:
    y = "image/jpeg"
elif ".jpeg" in x:
    y = "image/jpeg"
elif ".png" in x:
    y = "image/png"
elif ".pdf" in x:
    y = "application/pdf"
elif ".txt" in x:
    y = "text/plain"
elif ".zip" in x:
    y = "application/zip"
else:
    y = "application/octet-stream"

print(y)