// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

import "../../interfaces/IPoolMintControllerV1.sol";
import "../../interfaces/IPoolBurnControllerV1.sol";
import "../../interfaces/IBurnHandlerV1.sol";

import "../../../AdministrationContracts/ClaimableAdmin.sol";

import "../BaseChip.sol";

/**
 * @title EngineChip
 * @notice EngineChip is a ERC20 token that functions as a chip for ERC20 tokens that exist in the engin chain
 */
contract EngineChip is ClaimableAdmin, ERC20, ReentrancyGuard, BaseChip {
  using SafeERC20 for IERC20;
  using SafeERC20 for ERC20;

  // ***** Events *****

  event IsMintingPausedSet(bool indexed value);

  event BurnHandlerSet(
    address indexed previousHandler,
    address indexed handler
  );

  event MintControllerSet(
    address indexed previousController,
    address indexed newController
  );
  event BurnControllerSet(
    address indexed previousController,
    address indexed newController
  );

  event TokensSwept(
    address indexed token,
    address indexed receiver,
    uint256 amount
  );

  event ChipMinted(
    address indexed minter,
    address indexed to,
    uint256 underlyingAmount,
    uint256 amount
  );
  event ChipBurned(
    address indexed burner,
    address indexed receiver,
    uint256 underlyingAmount,
    uint256 amount
  );

  // ***** Constants *****

  uint public constant SELF_UNIT_SCALE = 1e18;

  // ***** Storage *****

  IERC20 public immutable underlyingToken;

  uint256 public immutable exchangeRate;

  IBurnHandlerV1 public burnHandler;

  bool public isMintingPaused;

  IPoolMintControllerV1 public mintController;
  IPoolBurnControllerV1 public burnController;

  // ***** Constructor *****

  constructor(
    IRegistryV1 _registry,
    string memory _name,
    string memory _symbol,
    IERC20 _underlyingToken,
    address _initialAdmin
  ) ERC20(_name, _symbol) BaseChip(_registry, ChipMode.LOCAL) {
    require(address(_underlyingToken) != address(0), "!_underlyingToken");
    underlyingToken = _underlyingToken;

    uint underlyingDecimals = ERC20(address(_underlyingToken)).decimals();
    exchangeRate = 10 ** underlyingDecimals;

    admin = _initialAdmin;
    emit NewAdmin(address(0), _initialAdmin);
  }

  // ***** Admin Functions *****

  /**
   * @notice Set the auto approved spender for a role
   * @param role The role to set the spender for
   * @param spender The spender to set
   */
  function setAutoApprovedSpenderForRole(
    string calldata role,
    address spender
  ) external onlyAdmin {
    setAutoApprovedSpenderForRoleInternal(role, spender);
  }

  /**
   * @notice Set the burn handler for the pool
   * @param _handler The new burn handler
   */
  function setBurnHandler(IBurnHandlerV1 _handler) external onlyAdmin {
    require(
      address(_handler) == address(0) ||
        registry.validBurnHandlerForChip(address(this)) == address(_handler),
      "NOT_REGISTRY_APPROVED"
    );

    address previousHandler = address(burnHandler);

    require(previousHandler != address(_handler), "ALREADY_SET");

    burnHandler = _handler;
    emit BurnHandlerSet(previousHandler, address(_handler));
  }

  /**
   * @notice Set the minting pause state
   * @param _value The new minting pause state
   */
  function setIsMintingPaused(bool _value) external onlyAdmin {
    require(isMintingPaused != _value, "ALREADY_SET");

    isMintingPaused = _value;
    emit IsMintingPausedSet(_value);
  }

  /**
   * @notice Set the mint controller for the pool
   * @param _mintController The new mint controller
   */
  function setMintController(
    IPoolMintControllerV1 _mintController
  ) external onlyAdmin {
    // Sanity
    require(
      address(_mintController) == address(0) ||
        _mintController.isPoolMintController(),
      "NOT_POOL_MINT_CONTROLLER"
    );

    address previousController = address(mintController);

    require(previousController != address(_mintController), "ALREADY_SET");

    mintController = _mintController;

    emit MintControllerSet(previousController, address(_mintController));
  }

  /**
   * @notice Set the burn controller for the pool
   * @param _burnController The new burn controller
   */
  function setBurnController(
    IPoolBurnControllerV1 _burnController
  ) external onlyAdmin {
    // Sanity
    require(
      address(_burnController) == address(0) ||
        _burnController.isPoolBurnController(),
      "NOT_POOL_BURN_CONTROLLER"
    );

    address previousController = address(burnController);

    require(previousController != address(_burnController), "ALREADY_SET");

    burnController = _burnController;

    emit BurnControllerSet(previousController, address(_burnController));
  }

  /**
   * @notice Sweep any non-underlying tokens from the contract
   * @dev Owner can sweep any tokens other than the underlying token
   * @param _token The token to sweep
   * @param _amount The amount to sweep
   */
  function sweepTokens(IERC20 _token, uint256 _amount) external onlyAdmin {
    require(
      address(_token) != address(underlyingToken),
      "CANNOT_SWEEP_UNDERLYING_TOKEN"
    );

    _token.safeTransfer(admin, _amount);

    emit TokensSwept(address(_token), admin, _amount);
  }

  /**
   * @notice Sweep native coin from the contract
   * @dev Owner can sweep any native coin accidentally sent to the contract
   * @param _amount The amount to sweep
   */
  function sweepNative(uint256 _amount) external onlyAdmin {
    payable(admin).transfer(_amount);
  }

  // ***** Local Mint/Burn Functions *****

  /**
   * Mint chips to the given address against underlying tokens taken from the caller
   * @param _toAddress The address to mint the chips to
   * @param _amount The amount of underlying tokens to mint against
   */
  function mintChip(address _toAddress, uint256 _amount) external nonReentrant {
    require(!isMintingPaused, "MINT_PAUSED");
    require(_amount != 0, "AMOUNT_ZERO");

    address minter = msg.sender;

    takeUnderlying(minter, _amount);
    uint ownAmountToMint = underlyingAmountToOwnAmountInternal(_amount);

    IPoolMintControllerV1 _mintController = mintController;
    if (address(_mintController) != address(0)) {
      bool isPermitted = _mintController.informMintRequest(
        minter,
        _toAddress,
        _amount,
        ownAmountToMint
      );
      require(isPermitted, "MINT_CONTROLLER_REFUSAL");
    }

    _mint(_toAddress, ownAmountToMint);

    emit ChipMinted(minter, _toAddress, _amount, ownAmountToMint);
  }

  /**
   * Burn chips from the caller and transfer the underlying tokens to the 'toAddress'
   * @param _receiver The address to receive the underlying tokens
   * @param _amount The amount of chips to burn
   */
  function burnChip(address _receiver, uint256 _amount) external nonReentrant {
    address burner = msg.sender;
    safeBurnInternal(burner, _receiver, _amount);
  }

  /**
   * Burn chips from the caller and transfer the underlying tokens to the 'burnHandler' and calls it's 'handleBurn' function
   * @param _amount The amount of chips to burn
   * @param _payload The payload to pass to the burn handler
   */
  function burnChipAndCall(
    uint256 _amount,
    bytes calldata _payload
  ) external payable nonReentrant {
    require(burnHandler != IBurnHandlerV1(address(0)), "NO_BURN_HANDLER");

    // burn the chips
    address burner = msg.sender;
    uint256 underlyingAmount = safeBurnInternal(
      burner,
      address(burnHandler),
      _amount
    );

    // call the burn handler
    burnHandler.handleBurn{value: msg.value}(
      burner,
      _amount,
      underlyingAmount,
      _payload
    );
  }

  // ***** burn internal Functions *****

  /**
   * Safely burns the chips and transfers the underlying tokens to the receiver
   * @param burner The address of the burner
   * @param receiver The address to receive the underlying tokens
   * @param chipAmount The amount of chips to burn
   * @return underlyingAmount The amount of underlying tokens transferred
   */
  function safeBurnInternal(
    address burner,
    address receiver,
    uint256 chipAmount
  ) internal returns (uint256 underlyingAmount) {
    // sanity
    require(chipAmount != 0, "AMOUNT_ZERO");

    // Convert the chip amount to underlying amount
    underlyingAmount = ownAmountToUnderlyingAmountInternal(chipAmount);

    // sanity
    require(underlyingAmount != 0, "UNDERLYING_AMOUNT_ZERO");

    // Inform the burn controller
    IPoolBurnControllerV1 _burnController = burnController;
    if (address(_burnController) != address(0)) {
      bool isPermitted = _burnController.informBurnRequest(
        burner,
        receiver,
        underlyingAmount,
        chipAmount
      );
      require(isPermitted, "BURN_CONTROLLER_REFUSAL");
    }

    // Burn the chips
    _burn(burner, chipAmount);

    // Transfer the underlying tokens to the receiver
    underlyingToken.safeTransfer(receiver, underlyingAmount);

    // emit event
    emit ChipBurned(burner, receiver, underlyingAmount, chipAmount);
  }

  // ***** ERC20 internal override Functions *****

  /**
   * @notice Uses the base ERC20 logic unless 'spender' is marked as 'autoApproved'
   */
  function allowance(
    address owner,
    address spender
  ) public view virtual override returns (uint256) {
    if (autoApproved[spender]) {
      return type(uint).max;
    } else {
      return ERC20.allowance(owner, spender);
    }
  }

  // ***** Underlying utils *****

  /**
   * Utility function to safely take underlying tokens (ERC20) from a pre-approved account
   * @dev Will revert if the contract will not get the exact 'amount' value
   */
  function takeUnderlying(address from, uint amount) internal {
    uint balanceBefore = underlyingToken.balanceOf(address(this));
    underlyingToken.safeTransferFrom(from, address(this), amount);
    uint balanceAfter = underlyingToken.balanceOf(address(this));
    require(balanceAfter - balanceBefore == amount, "DID_NOT_RECEIVE_EXACT");
  }

  /**
   * Converts the underlying amount to the amount of self tokens by the current exchange rate
   */
  function underlyingAmountToOwnAmountInternal(
    uint256 underlyingAmount
  ) internal view returns (uint256 ownAmount) {
    ownAmount = (underlyingAmount * SELF_UNIT_SCALE) / exchangeRate;
  }

  /**
   * Converts the (self) LP amount to the equal underlying amount by the current exchange rate
   */
  function ownAmountToUnderlyingAmountInternal(
    uint256 ownAmount
  ) internal view returns (uint256 underlyingAmount) {
    underlyingAmount = (ownAmount * exchangeRate) / SELF_UNIT_SCALE;
  }
}
