// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/security/Pausable.sol";
import "./SX1155NFTBase.sol";
import "./RoleManager.sol";
import "./AuthorizeManager.sol";
import "./AccountControl.sol";

/// @title SX1155NFT
/// @notice SX1155 NFT Contract with rules and authorizations
contract SX1155NFT is Pausable, SX1155NFTBase, RoleManager, AuthorizeManager, AccountControl {
    struct GreylistTransferRequest {
        address from;
        address to;
        uint256 tokenId;
        uint256 quantity;
        bool valid;
    }

    ///@notice Next greylist transfer request ID
    uint256 greylistNextReqId = 1;

    ///@notice List of greylist transfers waiting for confirmation from ISSUER
    mapping(uint256 => GreylistTransferRequest) internal greylistTransferRequests;

    ///@notice Emitted when an issuer does a 'force' transfer
    event ForceTransfer(address indexed issuer, address indexed from, address indexed to, uint256 tokenId);
    ///@notice Emitted when an issuer does a 'force' burn of an account tokens
    event ForceBurn(address indexed issuer, address indexed from, uint256 indexed tokenId, string reason);
    ///@notice Emitted when a user creates a transfer request to be confirmed by issuer.
    event GreylistTransferRequestCreated(
        uint256 indexed reqId,
        address indexed from,
        address indexed to,
        uint256 tokenId,
        uint256 quantity
    );
    ///@notice Emitted when an issuer approves a greylist transfer request
    event GreylistTransferApproved(uint256 indexed reqId, address indexed issuer, uint256 indexed tokenId);
    ///@notice Emitted when a user cancels previously created greylist transfer request
    event GreylistTransferCancelled(uint256 indexed reqId, address indexed from, address indexed to, uint256 tokenId);

    /// @dev Constructor for setting basic configurations.
    /// @param _name a name for all tokens under this contract
    /// @param _symbol a symbol for all tokens under this contract
    /// @param _admin default admin address, will be assigned DEFAULT_ADMIN_ROLE Role
    /// @param _issuer default issuer address, will be assigned ISSUER Role
    /// @param _editor default editor address, will be assigned EDITOR Role
    constructor(
        string memory _name,
        string memory _symbol,
        address _admin,
        address _issuer,
        address _editor
    ) SX1155NFTBase(_name, _symbol) RoleManager(_admin, _issuer, _editor) {}

    /// @dev Sets KYA of the contract. Only EDITOR can do this.
    /// @param _kya KYA string
    function setKya(string calldata _kya) external onlyRole(EDITOR_ROLE) {
        _setKya(_kya);
    }

    /// @dev Sets KYA of a single token id. Only EDITOR can do this.
    /// @param _id token id
    /// @param _kya KYA string
    function setTokenKya(uint256 _id, string calldata _kya) external onlyRole(EDITOR_ROLE) {
        _setTokenKya(_id, _kya);
    }

    /// @dev Sets the contract level URI. Only ISSUER can do this.
    /// @param _contract_uri URI string
    function setContractURI(string calldata _contract_uri) external onlyRole(ISSUER_ROLE) {
        _setContractURI(_contract_uri);
    }

    /// @dev Pauses the token contract, no more transfers allowed. Only ISSUER can do this.
    function pauseToken() external onlyRole(ISSUER_ROLE) {
        _pause();
    }

    /// @dev Unpause/resume the contract. Only ISSUER can do this.
    function unPauseToken() external onlyRole(ISSUER_ROLE) {
        _unpause();
    }

    /// @dev Sets authorization contract of a token id. One contract for each
    /// token id. Only AGENT can do this.
    /// @param _id token id
    /// @param _authContract Authorization contract address, must be a contract address
    /// which implements IAuthorizationContract interface.
    function setTokenAuthContract(uint256 _id, address _authContract) external onlyRole(AGENT_ROLE) {
        _setAuthorizationContract(_id, _authContract);
    }

    /// @dev Sets default authorization contract, this is used when token id
    /// specific auth contact is not set
    /// @param _authContract authorization contract address, must be a contract address
    /// which implements IAuthorizationContract interface.
    function setGlobalAuthContract(address _authContract) external onlyRole(AGENT_ROLE) {
        _setDefaultAuthorizationContract(_authContract);
    }

    /// @dev Sets the maximum size of an array that can be passed as a parameter
    /// @param _maxArraySize the maximum size of the array, which will be the size limit of the array
    function setMaxArraySize(uint256 _maxArraySize) external onlyRole(ISSUER_ROLE) {
        _setMaxArraySize(_maxArraySize);
    }

    /// @dev Approves a greylist transfer request, does the transfer and removes the request.
    /// Only ISSUER can do this.
    /// @param reqId request id, returned by requestTransfer().
    function approveTransferRequest(uint256 reqId) external onlyRole(ISSUER_ROLE) {
        GreylistTransferRequest memory req = greylistTransferRequests[reqId];

        require(req.valid, "SX1155: Invalid request id");
        delete greylistTransferRequests[reqId];

        _safeTransferFrom(req.from, req.to, req.tokenId, req.quantity, "");
        emit GreylistTransferApproved(reqId, msg.sender, req.tokenId);
    }

    /// @dev Cancels a greylist transfer request. can be issued only by the request creator.
    /// @param reqId request id returned by requestTransfer().
    function cancelTransferRequest(uint256 reqId) external {
        GreylistTransferRequest memory req = greylistTransferRequests[reqId];

        require(req.valid, "SX1155: Invalid request id");

        require(req.from == msg.sender, "SX1155: Sender is not owner of the transfer request");

        delete greylistTransferRequests[reqId];

        emit GreylistTransferCancelled(reqId, req.from, req.to, req.tokenId);
    }

    /// @dev Creates a transfer request that requires issuer confirmation. Only Greylisted users
    /// can do this.
    /// @param to receiver address
    /// @param tokenId token ID to transfer
    /// @param quantity number of tokens to transfer
    /// @return reqId request ID assigned to this request.
    function requestTransfer(
        address to,
        uint256 tokenId,
        uint256 quantity
    ) external isNotZeroAddress(to) returns (uint256 reqId) {
        // No transfers from users when token is paused
        _requireNotPaused();

        // 'sender' or 'receiver' account must not be frozen
        if (isAccountFrozen(msg.sender) || isAccountFrozen(to)) revert("SX1155: Sender or receiver account frozen");

        require(isGreylisted(msg.sender) || isGreylisted(to), "SX1155: Account not in greylist");

        // Add the request into the list and return reqId
        reqId = greylistNextReqId;
        greylistTransferRequests[reqId] = GreylistTransferRequest(msg.sender, to, tokenId, quantity, true);

        greylistNextReqId++;

        emit GreylistTransferRequestCreated(reqId, msg.sender, to, tokenId, quantity);
        return reqId;
    }

    function supportsInterface(bytes4 _interfaceId) public view override(SX1155NFTBase, RoleManager) returns (bool) {
        return super.supportsInterface(_interfaceId);
    }

    /// @dev Returns information of a greylist transfer request.
    /// @param reqId request id returned by requestTransfer().
    function transferRequestInfo(uint256 reqId)
        external
        view
        returns (
            address from,
            address to,
            uint256 tokenId,
            uint256 quantity
        )
    {
        return (
            greylistTransferRequests[reqId].from,
            greylistTransferRequests[reqId].to,
            greylistTransferRequests[reqId].tokenId,
            greylistTransferRequests[reqId].quantity
        );
    }

    /// @dev Mints a token to a given account. Only ISSUER can do this
    /// @param _to account to mint to
    /// @param _quantity number of tokens
    /// @param _tokenURI token URI string
    /// @param _data an arbitrary array of bytes
    function mint(
        address _to,
        uint256 _quantity,
        string calldata _tokenURI,
        bytes calldata _data
    ) public onlyRole(ISSUER_ROLE) {
        _mintToken(_to, _quantity, _tokenURI, _data);
    }

    /// @dev Mints a batch of tokens, only ISSUER can do this
    /// @param _accounts array of accounts to mint to
    /// @param _quantities array of quantities
    /// @param _tokenURIs array of token URI strings
    /// @param _data an arbitrary array of bytes
    function mintBatch(
        address[] calldata _accounts,
        uint256[] calldata _quantities,
        string[] calldata _tokenURIs,
        bytes[] calldata _data
    ) external arrayMaxSize(_accounts.length) {
        require(
            _accounts.length == _quantities.length &&
                _accounts.length == _tokenURIs.length &&
                _accounts.length == _data.length,
            "SX1155: Invalid inputs"
        );

        uint256 accountsLength = _accounts.length;

        for (uint256 i = 0; i < accountsLength; i++) {
            mint(_accounts[i], _quantities[i], _tokenURIs[i], _data[i]);
        }
    }

    /// @dev Burns a token, token owner can call this
    /// @param _id token id
    /// @param _quantity number of tokens to burn
    function burn(uint256 _id, uint256 _quantity) external {
        _burnToken(msg.sender, _id, _quantity);
    }

    /// @dev Allows an isssuer to burn a token of any account. Only ISSUER can do this.
    /// @param from token owner address
    /// @param tokenId token ID
    /// @param quantity number of tokens to burn
    /// @param reason a reason/reference string which will be emitted
    function forceBurn(
        address from,
        uint256 tokenId,
        uint256 quantity,
        string calldata reason
    ) public onlyRole(ISSUER_ROLE) {
        _burnToken(from, tokenId, quantity);
        emit ForceBurn(msg.sender, from, tokenId, reason);
    }

    /// @dev Allows an isssuer to burn tokens from a batch accounts. Only ISSUER can do this.
    /// @param _accounts an array of accounts
    /// @param _tokenIds an array of  token IDs
    /// @param _quantities an array of number of tokens to burn
    /// @param reason a reason/reference string which will be emitted
    function forceBurnBatch(
        address[] calldata _accounts,
        uint256[] calldata _tokenIds,
        uint256[] calldata _quantities,
        string calldata reason
    ) external arrayMaxSize(_accounts.length) {
        require(
            _accounts.length == _tokenIds.length && _accounts.length == _quantities.length,
            "SX1155: Invalid inputs"
        );

        uint256 accountsLength = _accounts.length;

        for (uint256 i = 0; i < accountsLength; i++) {
            forceBurn(_accounts[i], _tokenIds[i], _quantities[i], reason);
        }
    }

    /// @dev Allows an issuer to transfer a token from any account. Only ISSUER can do this.
    /// @param from token owner address
    /// @param to receiver address
    /// @param tokenId token ID.
    /// @param quantity number of tokens to transfer
    function forceTransfer(
        address from,
        address to,
        uint256 tokenId,
        uint256 quantity
    ) external onlyRole(ISSUER_ROLE) {
        _safeTransferFrom(from, to, tokenId, quantity, "");
        emit ForceTransfer(msg.sender, from, to, tokenId);
    }

    /// @dev Called internally before each token transfer. This allows transfers only after
    ///  all the rules and authorizations are performed.
    function _beforeTokenTransfer(
        address operator,
        address from,
        address to,
        uint256[] memory ids,
        uint256[] memory quantities,
        bytes memory data
    ) internal override {
        uint256 i;

        super._beforeTokenTransfer(operator, from, to, ids, quantities, data);

        // Dont apply any restrictions on transfers from Issuer, can tranfer even when the token is paused
        if (hasRole(ISSUER_ROLE, msg.sender)) return;

        // No transfers from users when token is paused
        _requireNotPaused();

        // Cannot transfer from/to a frozen account
        if (isAccountFrozen(from) || isAccountFrozen(to)) revert("SX1155: Sender or receiver account frozen");

        // Greylisted users cannot transfer without ISSUER confirmation
        if (isGreylisted(from) || isGreylisted(to))
            revert("SX1155: Sender or receiver are greylisted. Use requestTransfer");

        // Whitelisted accounts can transfer, overrides all rules from authorized contracts
        bool senderWhitelisted = isWhitelisted(from);
        bool receiverWhitelisted = isWhitelisted(to);

        if (senderWhitelisted && receiverWhitelisted) return;

        /*
         * Authorization contracts checks on each token.
         * Skip authorization checks for burns.
         * Skip authorization on the account which is already whitelisted.
         */

        uint256 idsLength = ids.length;
        if (to != address(0)) {
            if (!senderWhitelisted && !receiverWhitelisted) {
                // Run checks on both sender and receiver

                // Check authorization for each NFT transfer
                for (i = 0; i < idsLength; i++) {
                    require(mustBeAuthorizedHolders(from, to, ids[i], data), "SX1155: Not authorized");
                }
            } else if (senderWhitelisted) {
                // Run checks on receiver
                for (i = 0; i < idsLength; i++) {
                    require(mustBeAuthorizedHolder(to, ids[i], data), "SX1155: receiver is not authorized");
                }
            } else {
                // Run checks on sender
                for (i = 0; i < idsLength; i++) {
                    require(mustBeAuthorizedHolder(from, ids[i], data), "SX1155: sender is not authorized");
                }
            }
        }
    }
}
