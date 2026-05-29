// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

/// @title SX1155NFTBase
/// @notice SX1155 NFT Base Contract
contract SX1155NFTBase is ERC1155 {
    ///@notice SX1155NFT KYA
    string public kya;

    ///@notice NFT tokenId to KYA mapping
    mapping(uint256 => string) public tokenKya;

    ///@notice token to total supply mapping
    mapping(uint256 => uint256) private tokenSupply;

    ///@notice Contract-level metadata URI
    string public contractURI;

    ///@notice tokenID to URI mapping
    mapping(uint256 => string) private tokenURIs;

    ///@notice NFT name, a common name for all of the tokens under this contract
    string public name;

    ///@notice NFT symbol, a common symbol for all the tokens under this contract
    string public symbol;

    ///@notice Next NFT id
    uint256 public currentTokenId = 1;

    /// @dev Emitted when KYA of the contract is set
    /// @param from address of the setter
    /// @param kya KYA, a string
    event KyaUpdated(address from, string kya);

    /// @dev Emitted when KYA of a tokenId is set
    /// @param from address of the setter
    /// @param id token id
    /// @param kya KYA, a string
    event TokenKyaUpdated(address from, uint256 indexed id, string kya);
    /// @dev Emitted when contract URI set
    /// @param from address of the setter
    /// @param uri URI string
    event ContractURISet(address from, string uri);

    /// @dev Constructor for setting basic configurations.
    /// @param _name a name for all tokens under this contract
    /// @param _symbol a symbol for all tokens under this contract
    constructor(string memory _name, string memory _symbol) ERC1155("") {
        name = _name;
        symbol = _symbol;
    }

    /// @dev Returns whether this contract supports the given EIP165 interface.
    /// @param _interfaceId interface ID
    /// @return bool true or false
    function supportsInterface(bytes4 _interfaceId) public view virtual override(ERC1155) returns (bool) {
        return super.supportsInterface(_interfaceId);
    }

    /// @dev Returns token URI.
    /// @param _id token id
    /// @return token URI string
    function uri(uint256 _id) public view override returns (string memory) {
        return tokenURIs[_id];
    }

    /// @dev Returns the total quantity for a token ID
    /// @param _id uint256 ID of the token to query
    /// @return quantity of token in existence
    function totalSupply(uint256 _id) external view returns (uint256) {
        return tokenSupply[_id];
    }

    /// @dev Sets KYA of the contract.
    /// @param _kya KYA string
    function _setKya(string calldata _kya) internal {
        kya = _kya;
        emit KyaUpdated(msg.sender, _kya);
    }

    /// @param _kya KYA string
    function _setTokenKya(uint256 _id, string calldata _kya) internal {
        require(tokenSupply[_id] > 0, "SX1155: Token does not exist");
        tokenKya[_id] = _kya;
        emit TokenKyaUpdated(msg.sender, _id, _kya);
    }

    function _setContractURI(string calldata _contract_uri) internal {
        require(bytes(contractURI).length == 0, "SX1155: Already set");
        contractURI = _contract_uri;
        emit ContractURISet(msg.sender, _contract_uri);
    }

    /// @dev Mints a token to a given account
    /// @param _to account to mint to
    /// @param _quantity number of tokens
    /// @param _tokenURI token URI string
    /// @param _data an array of bytes
    function _mintToken(
        address _to,
        uint256 _quantity,
        string calldata _tokenURI,
        bytes calldata _data
    ) internal {
        require(_quantity > 0, "SX1155: Invalid quantity");
        uint256 _id = currentTokenId;
        tokenURIs[_id] = _tokenURI;
        tokenSupply[_id] = _quantity;
        currentTokenId++;
        _mint(_to, _id, _quantity, _data);
    }

    /// @dev Burns a token, called by owner/operator of the token
    /// @param _id token id
    /// @param _quantity number of tokens of type id to burn
    function _burnToken(
        address from,
        uint256 _id,
        uint256 _quantity
    ) internal {
        /* underflow reverts */
        tokenSupply[_id] -= _quantity;
        if (tokenSupply[_id] == 0) {
            delete tokenURIs[_id];
            delete tokenKya[_id];
        }
        _burn(from, _id, _quantity);
    }
}
