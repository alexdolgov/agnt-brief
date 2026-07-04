// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./interfaces/IAuthorizationContract.sol";

/// @title Token authorization contracts manager
abstract contract AuthorizeManager {
    /// @dev Mapping for NFT token id to Authorization contract
    mapping(uint256 => address) private authorizeContracts;

    /// @dev Default authorization contract, used when not configured for each NFT
    address public globalAuthContract;

    /// @dev Emitted when a default authorization contract is set
    /// @param from address of the setter/updater
    /// @param authContract Authorization contact address
    event GlobalAuthContractSet(address from, address authContract);

    /// @dev Emitted when a token id authorization contract is set
    /// @param from address of the setter/updater
    /// @param id token id
    /// @param authContract authorization contact address
    event TokenAuthContractSet(address from, uint256 indexed id, address authContract);

    ///@dev Checks `_address` if this address is authorized.
    ///@return True if `_address` with `_id` is authorized.
    function mustBeAuthorizedHolder(
        address _address,
        uint256 _id,
        bytes memory /*_data */
    ) public view returns (bool) {
        address authContract = authorizeContracts[_id];

        /*
         * If authorization contract not set for this id, fall back to default authorization
         * contract
         */
        if (authContract == address(0)) authContract = globalAuthContract;

        // No authorizarion contract set, defaults to 'DENY' the transfer
        if (authContract == address(0)) return false;

        try IAuthorizationContract(authContract).isAccountAuthorized(_address) returns (bool response) {
            return response;
        } catch Error(string memory) {
            // Call rejected/reverted
            return false;
        } catch {
            // Authorization contract has not implemented the API
            return false;
        }
    }

    /// @dev Called for each token transfer. It invokes authorization contract's
    /// isAccountAuthorized() and decides whether to allow or deny the transfer
    /// @param _from transfer from account
    /// @param _to transfer to account
    /// @param _id token id
    /// @return returns whether to allow or deny transfer, true or false
    function mustBeAuthorizedHolders(
        address _from,
        address _to,
        uint256 _id,
        bytes memory _data
    ) public view returns (bool) {
        return (mustBeAuthorizedHolder(_from, _id, _data) && mustBeAuthorizedHolder(_to, _id, _data));
    }

    /// @dev Sets default authorization contract
    function _setDefaultAuthorizationContract(address authContract) internal {
        if (authContract != address(0)) require(_isContract(authContract), "AM: Not a valid auth contract address");
        globalAuthContract = authContract;
        emit GlobalAuthContractSet(msg.sender, authContract);
    }

    /// @dev Sets token id specific authorization contract
    function _setAuthorizationContract(uint256 id, address authContract) internal {
        /* If the given contract is 0, reset it so that it falls back to defaultAuthorizeContract */
        if (authContract != address(0)) require(_isContract(authContract), "AM: Not a valid auth contract address");
        authorizeContracts[id] = authContract;
        emit TokenAuthContractSet(msg.sender, id, authContract);
    }

    /// @dev Checks if an address is a contract or not
    function _isContract(address _contractAddress) internal view returns (bool) {
        // This method relies on extcodesize, which returns 0 for contracts in
        // construction, since the code is only stored at the end of the
        // constructor execution.

        return _contractAddress.code.length > 0;
    }
}
