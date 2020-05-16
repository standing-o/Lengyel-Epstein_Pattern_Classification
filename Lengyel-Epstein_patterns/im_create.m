% clear all MATLAB variables, command windows, and figure
clear; clc; close all;

% spatial discretization
xright=10; nx=50;
yright=10; ny=floor(nx*yright/xright); 
h=xright/nx;
x=linspace(-0.5*h,xright+0.5*h,nx+2)';
y=linspace(-0.5*h,yright+0.5*h,ny+2);

% set the parameters which govern equation
Du=1;
Dv=0.01;    % changeable
k1=11;      % changeable
k2=11;
ubar=1+0.04*k2^2;
vbar=0.2*k2;

% set the parameters (time discretization)
dt=0.1*h^2;
maxit=80000;
nn=maxit;

for pit=1:50    % the number of images
% set the initial condition
rng(pit);
u=ubar+0.1*(2*rand(nx+2,ny+2)-1);
v=vbar+0.1*(2*rand(nx+2,ny+2)-1);
nu=u; nv=v;

% numerical scheme
for it=1:maxit
    % periodic boundary condition
    u(2:end-1,1)=u(2:end-1,end-1);
    u(2:end-1,end)=u(2:end-1,2);
    u(1,:)=u(end-1,:);
    u(end,:)=u(2,:);
    v(2:end-1,1)=v(2:end-1,end-1);
    v(2:end-1,end)=v(2:end-1,2);
    v(1,:)=v(end-1,:);
    v(end,:)=v(2,:);
    
    % set the source terms
    F=u(2:end-1,2:end-1).*v(2:end-1,2:end-1) ...
        ./(1+v(2:end-1,2:end-1).^2);
    f=k1*(v(2:end-1,2:end-1)-F);
    g=k2-v(2:end-1,2:end-1)-4*F;

    % solve the equations
    nu(2:end-1,2:end-1)=u(2:end-1,2:end-1)+dt*(f+Du*lap(u,h));
    nv(2:end-1,2:end-1)=v(2:end-1,2:end-1)+dt*(g+Dv*lap(v,h));
    
    % reset the variables for next step
    u=nu;
    v=nv;
    
    % visualization
    if mod(it,nn)==0
        surf(x(2:end-1),y(2:end-1),u(2:end-1,2:end-1)','linestyle','none');
        axis image;
        view(2);
        set(gca, 'xtick',[], 'ytick',[]);
        box on;
        shading interp;
        drawnow;
        print('-djpeg',sprintf('0/pattern_%d',pit));    % storage path
    end
end
end