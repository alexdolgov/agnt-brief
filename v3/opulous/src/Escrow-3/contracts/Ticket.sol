// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import '@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol';
import '@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol';
import './Escrow.sol';
import 'hardhat/console.sol';

contract Tickets is
  Initializable,
  ERC20Upgradeable,
  ERC20BurnableUpgradeable,
  PausableUpgradeable,
  AccessControlUpgradeable,
  ERC20PermitUpgradeable,
  UUPSUpgradeable
{
  using SafeERC20Upgradeable for ERC20Upgradeable;
  /// @notice role for minting Tickets
  bytes32 public constant MINTER_ROLE = keccak256('MINTER_ROLE');
  /// @notice role for pausing the contract and Signing Buy and Claim Data
  bytes32 public constant OPERATION_ROLE = keccak256('OPERATION_ROLE');

  /// @notice struct for Claim Data
  struct ClaimData {
    address receiver; // address of the receiver
    uint256 Amount; // amount of Tickets to mint
    address signer; // address of the signer
    uint256 nonce; // nonce of the signature
    uint256 deadline; // deadline of the signature
  }
  /// @notice struct for Buy Data
  struct BuyData {
    address tokenAddress; // address of the token used to pay for the tickets
    uint256 price; // price of the token
    uint256 amount; // amount of Tickets to mint
    address signer; // address of the signer
    uint256 nonce; // nonce of the signature
    uint256 deadline; // deadline of the signature
  }
  struct TrackData {
    uint256 MintedTickets;
    uint256 BurnedTickets;
    uint256 ClaimedTickets;
    uint256 BoughtTickets;
    uint256 TotalSupply;
  }

  /** @notice mapping for used nonces */
  mapping(uint256 => bool) public usedNonces;
  uint256 MintedTickets;
  uint256 BurnedTickets;
  uint256 ClaimedTickets;
  uint256 BoughtTickets;
  address public escrowAddress;

  event NonceUsed(uint256 indexed nonce);

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  function decimals() public pure override returns (uint8) {
    return 18;
  }

  function initialize(uint256 preMint) public initializer {
    __ERC20_init('Opulous Ticket', 'OPT');
    __Pausable_init();
    __AccessControl_init();
    __ERC20Permit_init('OpulousTickets');
    __UUPSUpgradeable_init();

    _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    _grantRole(OPERATION_ROLE, msg.sender);
    _grantRole(MINTER_ROLE, msg.sender);
    if (preMint > 0) {
      super._mint(msg.sender, preMint);
    }
  }

  /**
   * @dev Pauses all token transfers.
   *
   * See {ERC20Pausable} and {Pausable-_pause}.
   *
   * Requirements:
   *
   * - the caller must have the `DEFAULT_ADMIN_ROLE`.
   */
  function pause() public onlyRole(DEFAULT_ADMIN_ROLE) {
    _pause();
  }

  /**
   * @dev Unpauses all token transfers.
   *
   * See {ERC20Pausable} and {Pausable-_unpause}.
   *
   * Requirements:
   *
   * - the caller must have the `DEFAULT_ADMIN_ROLE`.
   */
  function unpause() public onlyRole(DEFAULT_ADMIN_ROLE) {
    _unpause();
  }

  /**
   * @dev Creates `amount` new tokens for `to`.
   *
   * See {ERC20-_mint}.
   *
   * Requirements:
   *
   * - the caller must have the `MINTER_ROLE`.
   */
  function mint(address to, uint256 amount) public onlyRole(MINTER_ROLE) {
    MintedTickets += amount;
    _mint(to, amount);
  }

  /**
   * @dev claim tickets using a signature
   * @param signature the signature to use
   * @param Data the data to use
   */
  function claimTickets(bytes memory signature, ClaimData calldata Data) public whenNotPaused {
    require(!usedNonces[Data.nonce], 'signature already executed');
    require(block.timestamp <= Data.deadline, 'signature expired');
    _checkRole(OPERATION_ROLE, Data.signer);

    bytes32 digest = _hashTypedDataV4(
      keccak256(
        abi.encode(
          keccak256(
            'ClaimData(address receiver,uint256 Amount,address signer,uint256 nonce,uint256 deadline)'
          ),
          Data.receiver,
          Data.Amount,
          Data.signer,
          Data.nonce,
          Data.deadline
        )
      )
    );
    address signer = ECDSAUpgradeable.recover(digest, signature);

    require(Data.signer == signer, 'Invalid signature');
    usedNonces[Data.nonce] = true;
    ClaimedTickets += Data.Amount;
    _mint(Data.receiver, Data.Amount);
    emit NonceUsed(Data.nonce);
  }

  /**
   * @dev buy tickets using a signature and paying with an ERC20 token
   * @param signature the signature to use
   * @param Data the data to use
   */
  function buyTickets(bytes memory signature, BuyData calldata Data) public whenNotPaused {
    require(!usedNonces[Data.nonce], 'signature already executed');
    require(block.timestamp <= Data.deadline, 'signature expired');
    _checkRole(OPERATION_ROLE, Data.signer);

    bytes32 digest = _hashTypedDataV4(
      keccak256(
        abi.encode(
          keccak256(
            'BuyData(address tokenAddress,uint256 price,uint256 amount,address signer,uint256 nonce,uint256 deadline)'
          ),
          Data.tokenAddress,
          Data.price,
          Data.amount,
          Data.signer,
          Data.nonce,
          Data.deadline
        )
      )
    );
    address signer = ECDSAUpgradeable.recover(digest, signature);

    require(Data.signer == signer, 'Invalid signature');
    usedNonces[Data.nonce] = true;
    require(
      ERC20Upgradeable(Data.tokenAddress).balanceOf(msg.sender) >= Data.price,
      'Not enough balance'
    );
    ERC20Upgradeable(Data.tokenAddress).safeTransferFrom(msg.sender, address(this), Data.price);
    BoughtTickets += Data.amount;
    _mint(msg.sender, Data.amount);
    emit NonceUsed(Data.nonce);
  }

  /**
   * @dev get the track data
   * @return track data
   */
  function getTrack() public view returns (TrackData memory) {
    return
      TrackData({
        MintedTickets: MintedTickets,
        BurnedTickets: BurnedTickets,
        ClaimedTickets: ClaimedTickets,
        BoughtTickets: BoughtTickets,
        TotalSupply: totalSupply()
      });
  }

  /**
   * @dev Destroys `amount` tokens from `account`, reducing the
   * total supply.
   *
   * See {ERC20-_burn}.
   *
   * Requirements:
   *
   * - the caller must have the `MINTER_ROLE`.
   */
  function _burn(address account, uint256 amount) internal override {
    BurnedTickets += amount;
    _transfer(account, address(this), amount);
    _approve(address(this), escrowAddress, amount);
    Escrow(payable(escrowAddress)).deposit(amount);
  }

  /**
   * @dev See {ERC20-_beforeTokenTransfer}.
   *
   * Requirements:
   *
   * - the contract must not be paused.
   */
  function _beforeTokenTransfer(
    address from,
    address to,
    uint256 amount
  ) internal override whenNotPaused {
    super._beforeTokenTransfer(from, to, amount);
  }

  function transferOwnership(address newOwner) public onlyRole(DEFAULT_ADMIN_ROLE) {
    require(newOwner != address(0), 'Ownable: new owner is the zero address');
    require(newOwner != msg.sender, 'Ownable: new owner is the current owner');
    _setupRole(DEFAULT_ADMIN_ROLE, newOwner);
    revokeRole(DEFAULT_ADMIN_ROLE, msg.sender);
  }

  function setEscrowAddress(address _escrowAddress) public onlyRole(DEFAULT_ADMIN_ROLE) {
    escrowAddress = _escrowAddress;
  }

  function _mint(address account, uint256 amount) internal override {
    Escrow(payable(escrowAddress)).mintTo(account, amount);
  }

  function _authorizeUpgrade(
    address newImplementation
  ) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}

  uint256[50] private __gap;
}
