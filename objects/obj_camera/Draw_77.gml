if ((global.panic == 1) && global.panicbg)
{
    application_surface_draw_enable(0)
    var winh = window_get_height()
    var winw = window_get_width()
    var apph = window_get_height()
    var appw = (apph * 1.77777777777778)
    var appx = ((winw - appw) / 2)
    var appa = lerp(1, 0.34, (global.wave / global.maxwave))
    draw_surface_stretched_ext(application_surface, appx, 0, appw, apph, 16777215, appa)
}
else
    application_surface_draw_enable(1)

