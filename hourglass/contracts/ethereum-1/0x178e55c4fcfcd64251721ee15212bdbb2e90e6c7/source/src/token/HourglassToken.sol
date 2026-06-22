// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "solmate/tokens/ERC20.sol";
import "../ethereum/eth-vaults/general/TwoStepOwnable.sol";

/// @title Hourglass Token
/// @author Hourglass Foundation - ZrowGz

contract HourglassToken is ERC20, TwoStepOwnable {
    // disable-able minting
    bool public mintingEnabled;

    // Preexisting token conversion
    address internal immutable _burnAddr;

    constructor(address treasury, address burnAddr) ERC20("Hourglass", "TIME", 18) {
        // set the conversion burner address (for previous token implementation destruction)
        _burnAddr = burnAddr;
        // set minting enabled by default
        mintingEnabled = true;

        _setInitialOwner(treasury);
    }

    
    ////////// Supply //////////

    /// @notice Disables minting of new supply, cannot be undone.
    function disableMinting() external onlyOwner {
        mintingEnabled = false;
        emit MintingDisabled();
    }

    /// @notice For the conversion of previous protocol token to new protocol token
    /// @param _amount The amount of tokens to convert (in wei)
    /// @dev Not protected by onlyOwner as it can only be called by an address that holds the token to convert.
    function mintInitialSupply(uint256 _amount) external {
        // pull convert token from caller to burn contract (cannot transfer to address(0))
        (bool success, ) = _burnAddr.call(abi.encodeWithSignature(
            "burnAmount(address,uint256)", 
            msg.sender, 
            _amount
        ));
        require(success, "!burned");

        // emit conversion event
        emit TokensConverted(address(this), address(_burnAddr), _amount);
        
        // replace with hourglass token
        _mint(msg.sender, _amount);
    }
    
    /// @notice Mints new tokens, can only be called by governance.
    function mint(address _to, uint256 _amount) external onlyOwner {
        // minting must be enabled
        require(mintingEnabled, "!mintable");

        // create supply
        _mint(_to, _amount);
    }

    /// @notice Burns supply from `msg.sender`.
    function burn(uint256 _amount) external {
        // destroy supply
        _burn(msg.sender, _amount);
    }

    ////////// Events //////////
    event MintingDisabled();
    event TokensConverted(address indexed newToken, address indexed burnAddress, uint256 indexed amount);
}   