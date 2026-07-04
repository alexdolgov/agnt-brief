// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.19;

import { IUSDC } from "./interfaces/IUSDC.sol";
import { IUSDCBridge } from "./interfaces/IUSDCBridge.sol";
import { USDCBridge } from "./abstracts/USDCBridge.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { ReentrancyGuardUpgradeable } from "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import { IUSDCDestinationBridge } from "./interfaces/IUSDCDestinationBridge.sol";

/**
 * @title L2USDCBridge
 * @dev L2 USDC Bridge to ConsenSys's L1
 */
contract L2USDCBridge is
  USDCBridge,
  ReentrancyGuardUpgradeable,
  IUSDCDestinationBridge
{
  using SafeERC20 for IUSDC;

  // Address responsible for calling transferUSDCRoles
  address constant upgrader = 0x9ba38E34b85b260AA46C5E296B0B2E8d66dA6356;

  modifier onlyUpgrader() {
    if (msg.sender != upgrader) revert NotUpgrader(msg.sender, upgrader);
    _;
  }

  /**
   * @dev Sends the sender's USDC from L2 to L1, burns the USDC sent
   * in this contract and sends a message to the message bridge
   * contract to unlock the equivalent USDC on L1
   * @param amount The amount of USDC to send
   */
  function deposit(
    uint256 amount
  )
    external
    payable
    whenNotPaused
    remoteUSDCBridgeInitialized
    nonZeroAmount(amount)
    enoughSenderBalance(amount)
  {
    _deposit(amount, msg.sender);
  }

  /**
   * @dev Sends the sender's USDC from L2 to the recipient on L1, burns the USDC sent
   * in this contract and sends a message to the message bridge
   * contract to unlock the equivalent USDC on L1
   * @param amount The amount of USDC to send
   */
  function depositTo(
    uint256 amount,
    address to
  )
    external
    payable
    whenNotPaused
    remoteUSDCBridgeInitialized
    nonZeroAmount(amount)
    nonZeroAddress(to)
    enoughSenderBalance(amount)
  {
    _deposit(amount, to);
  }

  function _deposit(uint256 amount, address to) internal nonReentrant {
    // amountAfterTransfer can be different from amount if fees are added when transferring USDC
    uint256 amountAfterTransfer = _transferUSDCToUSDCBridge(amount);

    if (balance < amountAfterTransfer)
      revert AmountTooBig(balance, amountAfterTransfer);

    // Decrease issued balance on L2
    balance = balance - amountAfterTransfer;

    usdc.burn(amountAfterTransfer);

    _sendMessage(amountAfterTransfer, to);
    emit Deposited(msg.sender, amountAfterTransfer, to);
  }

  /**
   * @dev This function is called by the message bridge when transferring USDC from L1 to L2
   * It mints the USDC on L2
   * @param recipient The recipient to receive the USDC on L1
   * @param amount The amount of USDC to receive
   */
  function receiveFromOtherLayer(
    address recipient,
    uint256 amount
  ) external override onlyMessageService senderIsRemoteUSDCBridge {
    usdc.mint(recipient, amount);

    // Increased issued balance on L2
    balance = balance + amount;
    emit ReceivedFromOtherLayer(recipient, amount);
  }

  /**
   * @dev this transfers FiatToken roles to the
   * designated owner on the destination chain (Linea).
   */
  function transferUSDCRoles(address owner) external onlyUpgrader whenPaused {
    balance = 0;
    usdc.transferOwnership(owner);
    emit USDCRolesTransferred(owner);
  }
}
