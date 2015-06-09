Rails.application.config.middleware.use OmniAuth::Builder do
        provider :munic, 'be8bb24cb2dcc8df6dfedd05f4c1d55b70939d8b0e1718e96f299bf960c99613', '7fd89d5c306affd7b943b56bca23dd69d88017ac61da6f1e7d27793cc13db328'
        # !! DO NOT SHARE YOUR CREDENTIALS LIKE THIS !!
end
