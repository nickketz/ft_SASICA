function newdata = ft_rej_SASICA(comp,data)

cfg_ica = [];
componentsToReject = find(comp.reject.gcompreject);
cfg_ica.component = componentsToReject;
msg = sprintf('%d, ',componentsToReject(:));
msg = sprintf('Rejecting components: \n%s\b\b',msg);
warndlg(msg);
newdata = ft_rejectcomponent(cfg_ica, comp, data);

