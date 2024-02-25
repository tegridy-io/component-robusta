local kap = import 'lib/kapitan.libjsonnet';
local inv = kap.inventory();
local params = inv.parameters.robusta;
local argocd = import 'lib/argocd.libjsonnet';

local app = argocd.App('robusta', params.namespace.name);

{
  robusta: app,
}
