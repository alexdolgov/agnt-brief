// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "@openzeppelin/token/ERC20/IERC20.sol";
/// @title Pitch Token Burner
/// @notice This contract is used to burn Pitch tokens as it has no "burn" functionality & cannot send to address(0).
/// @notice There is no way to transfer out of this contract.
/// @author Hourglass Foundation - ZrowGz

contract PitchBurner {

    IERC20 internal constant _CONVERT_TOKEN = IERC20(0x1b5bb61F958A418Bf173f6f56090dC0a00a897aA);
    address internal constant _HOURGLASS_TOKEN = address(0x178E55c4fcfCD64251721Ee15212bDBB2E90E6C7);
    /// @notice this pulls in the covert token & there's no way to get it out.
    function burnAmount(address _from, uint256 _amount) external {
        require(msg.sender == _HOURGLASS_TOKEN, "!hourglass");
        // check that balance of this + amount is less than total supply of convert token
        require(
            _CONVERT_TOKEN.balanceOf(address(this)) + _amount <= _CONVERT_TOKEN.totalSupply(), 
            "!burnableSupply"
        );

        // pull convert token from caller & send to burn contract (cannot transfer to address(0))
        _CONVERT_TOKEN.transferFrom(_from, address(this), _amount);

        emit TokensBurned(address(_CONVERT_TOKEN), _from, _amount);
    }

    event TokensBurned(address indexed destroyedToken, address indexed from, uint256 indexed amount);
}