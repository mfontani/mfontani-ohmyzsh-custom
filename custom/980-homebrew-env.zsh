if [[ -f ~/.homebrew_github_api_token ]]; then
    export HOMEBREW_GITHUB_API_TOKEN=$( cat ~/.homebrew_github_api_token )
fi
export HOMEBREW_BUILD_FROM_SOURCE=1
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_EMOJI=1
export HOMEBREW_NO_ANALYTICS=1
