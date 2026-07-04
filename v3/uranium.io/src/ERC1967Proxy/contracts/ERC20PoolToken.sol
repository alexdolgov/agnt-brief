// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import './ExtendedERC20.sol';
import '@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol';
import { IERC20, SafeERC20 } from '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import { IERC721 } from '@openzeppelin/contracts/token/ERC721/IERC721.sol';
import '@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol';

contract ERC20PoolToken is ExtendedERC20, ReentrancyGuardUpgradeable, IERC721Receiver {
  using SafeERC20 for IERC20;

  // Custom error for trying to register a zero address
  error InvalidAddress();

  // Custom error for attempting to register a token that's already registered
  error TokenAlreadyRegistered();

  // Custom error for attempting to unregister a token that's not registered
  error TokenNotRegistered();

  // Emitted when a token is successfully registered
  event TokenRegistered(address indexed tokenAddress);

  // Emitted when a token is successfully unregistered
  event TokenUnregistered(address indexed tokenAddress);

  // Emitted when an ERC20 token is transferred out of the contract
  event ERC20TokenTransferred(address indexed tokenAddress, address indexed recipient, uint256 amount);

  // Emitted when an ERC721 token is transferred out of the contract
  event ERC721TokenTransferred(address indexed tokenAddress, address indexed recipient, uint256 tokenId);

  // Mapping of tokens considered for the pool value calculations
  mapping(address => bool) private registeredTokens;

  function initialize(
    string memory name_,
    string memory symbol_,
    uint256 premintAmount,
    bool kycEnabled_,
    bool blacklistEnabled_,
    uint8 decimals_
  ) public virtual override initializer {
    __ReentrancyGuard_init();
    super.initialize(name_, symbol_, premintAmount, kycEnabled_, blacklistEnabled_, decimals_);
  }

  function registerToken(address tokenAddress) public onlyRole(DEFAULT_ADMIN_ROLE) {
    if (tokenAddress == address(0)) revert InvalidAddress();
    if (registeredTokens[tokenAddress]) revert TokenAlreadyRegistered();
    registeredTokens[tokenAddress] = true;
    emit TokenRegistered(tokenAddress);
  }

  function unregisterToken(address tokenAddress) public onlyRole(DEFAULT_ADMIN_ROLE) {
    if (!registeredTokens[tokenAddress]) revert TokenNotRegistered();
    registeredTokens[tokenAddress] = false;
    emit TokenUnregistered(tokenAddress);
  }

  function isTokenRegistered(address tokenAddress) public view returns (bool) {
    return registeredTokens[tokenAddress];
  }

  /**
   * @dev Transfers amy ERC20 token from the contract to the recipient.
   * In the event that an ERC20 token is accidentally sent to the contract, this function can be used to transfer it out.
   */
  function transferERC20(
    address tokenAddress,
    address recipient,
    uint256 amount
  ) public onlyRole(DEFAULT_ADMIN_ROLE) nonReentrant {
    IERC20 token = IERC20(tokenAddress);
    token.safeTransfer(recipient, amount);
    emit ERC20TokenTransferred(tokenAddress, recipient, amount);
  }

  /**
   * @dev Transfer any ERC721 token from the contract to the recipient.
   * In the event that an ERC721 token is accidentally sent to the contract, this function can be used to transfer it out.
   */
  function transferERC721(
    address tokenAddress,
    address recipient,
    uint256 tokenId
  ) public onlyRole(DEFAULT_ADMIN_ROLE) nonReentrant {
    IERC721 token = IERC721(tokenAddress);
    token.safeTransferFrom(address(this), recipient, tokenId);
    emit ERC721TokenTransferred(tokenAddress, recipient, tokenId);
  }

  /**
   * @dev Allows the contract to safely receive ERC721 tokens.
   * @param - operator The address which called `safeTransferFrom` function.
   * @param - from The address which previously owned the token.
   * @param - tokenId The NFT identifier which is being transferred.
   * @param - data Additional data with no specified format.
   * @return bytes4 Returns `bytes4(keccak256("onERC721Received(address,address,uint256,bytes)"))`
   */
  function onERC721Received(
    address /* operator */,
    address /* from */,
    uint256 /* tokenId */,
    bytes calldata /* data */
  ) external pure override returns (bytes4) {
    return this.onERC721Received.selector;
  }

  // UUPS upgrade authorization
  function _authorizeUpgrade(address newImplementation) internal override onlyRole(UPGRADER_ROLE) {}
}
