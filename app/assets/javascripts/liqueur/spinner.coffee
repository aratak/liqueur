#= require turbolinks
#= require ./lib/nprogress

NProgress.configure
  showSpinner: false

document.addEventListener "page:fetch", NProgress.start
document.addEventListener "page:change", NProgress.done
document.addEventListener "page:receive", NProgress.done
document.addEventListener "page:restore", NProgress.remove
