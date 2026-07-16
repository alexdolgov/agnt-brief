pragma solidity ^0.8.0;

import { IAuthorizationProvider } from "@auth/interfaces/IAuthorizationProvider.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

contract BasicAuth is IAuthorizationProvider, Ownable {
    /// @dev Mapping of authorized caller to boolean
    mapping(address => bool) public authorizedCallers;

    function hasAuthorization(address caller, address, bytes4) external view override returns (bool) {
        return authorizedCallers[caller];
    }

    function changeAuthorization(address caller, bool value) external onlyOwner {
        authorizedCallers[caller] = value;
    }
}
