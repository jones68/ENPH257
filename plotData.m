function [ ] = plotData( times, temps )
    
    subplot(1,2,1);
    plot(times,temps(:,1),'r-'); hold on
    plot(times,temps(:,2),'b-'); 
    plot(times,temps(:,3),'g-'); 
    plot(times,temps(:,4),'k-'); 
    plot(times,temps(:,5),'m-'); 
    plot(times,temps(:,6),'c-'); 
    xlabel('time (s)'); ylabel('temperature (C)');
    
    x = [0.299 0.228 0.152 0.076 0.005];
        
    temp = temps(1000, 1:5);
    
    subplot(1,2,2);
    cs = spline(x,temp);
    xx = linspace(x(1), x(end) ,100);
    
    plot(xx, ppval(cs,xx)); hold on
    plot(x,temps(1000,1:5), 'ro');
    xlabel('Distance along rod (mm)');
    ylabel('Temperature (C)');
    hold off

hold off
    
end