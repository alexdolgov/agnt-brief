pragma solidity 0.8.17;

import { Auth, GlobalACL } from "../Auth.sol";

contract WhitelistedTokenRegistry is GlobalACL {
    event UpdatedWhitelistedToken(address indexed _token, bool _isWhitelisted);
    event UpdatedIsWhitelistingEnabled(bool _isEnabled);

    /// @notice whitelisted tokens to/from which swaps allowed
    mapping(address => bool) public whitelistedTokens;
    /// @notice whitelisting in effect
    bool public isWhitelistingEnabled = true;

    constructor(Auth _auth) GlobalACL(_auth) { }

    function updateWhitelistedToken(address _token, bool _isWhitelisted) external onlyConfigurator {
        whitelistedTokens[_token] = _isWhitelisted;
        emit UpdatedWhitelistedToken(_token, _isWhitelisted);
    }

    function updateIsWhitelistingEnabled(bool _isWhitelistingEnabled) external onlyConfigurator {
        isWhitelistingEnabled = _isWhitelistingEnabled;
        emit UpdatedIsWhitelistingEnabled(_isWhitelistingEnabled);
    }

    function isWhitelistedToken(address _token) external view returns (bool) {
        if (isWhitelistingEnabled) {
            return whitelistedTokens[_token];
        }
        return true;
    }
}
