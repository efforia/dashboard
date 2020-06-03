"""efforia URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.conf.urls import url, include
from django.views.generic import TemplateView

from .hub.urls import urlpatterns as hub_patterns
from .app.urls import urlpatterns as app_patterns

urlpatterns = [
    url('', TemplateView.as_view(template_name="index.html")),
    url('admin/', admin.site.urls),
    url('hub/', include(hub_patterns)),
    url('app/', include(app_patterns)),
]
