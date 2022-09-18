from django.shortcuts import render
import pyshorteners

def shorten(request):
    if request.POST:
        shortener = pyshorteners.Shortener()
        shortened_url = shortener.chilpit.short(request.POST['url'])
        return render(request, 'index.html', {'shortened_url': shortened_url})
    return render(request, 'index.html')