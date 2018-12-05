function obj = set_stat_options( obj , varargin )
% set_line_options Set statistics options

p=inputParser;
my_addParameter(p, 'alpha', 2*(1-normcdf(1,0,1))); % Set to SEM instead of 95% CI
my_addParameter(p, 'nboot', 200 );
parse(p,varargin{:});

for obj_ind=1:numel(obj)
    obj(obj_ind).stat_options=p.Results;
end

end
