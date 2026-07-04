// SPDX-License-Identifier: agpl-3.0
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "./interfaces/IWBNB.sol";
import "./interfaces/IGateway.sol";
import "./interfaces/ILGE.sol";

contract Gateway is IGateway, Ownable {
  using SafeERC20 for IERC20;

  IWBNB public immutable wbnb;
  address public immutable hbrLge;

  /**
   * @dev Sets the WBNB address and the lge address and
   * grants max approval to lge contract
   * @param _wbnb Address of the Wrapped BNB contract
   * @param _hbrLge Address of the hbr lge contract
   **/
  constructor(address _wbnb, address _hbrLge) {
    wbnb = IWBNB(_wbnb);
    hbrLge = _hbrLge;
    wbnb.approve(_hbrLge, type(uint256).max);
  }

  /**
   * @dev deposits WBNB into the LGE, using native BNB.
   **/
  function depositBNB(
    uint256 minUsdtAmountOut
  ) external payable override {
    wbnb.deposit{value: msg.value}();
    ILGE(hbrLge).buy(address(wbnb), msg.value, minUsdtAmountOut, msg.sender);
  }

  /**
   * @dev transfer BNB to an address, revert if it fails.
   * @param to recipient of the transfer
   * @param value the amount to send
   */
  function _safeTransferBNB(address to, uint256 value) internal {
    (bool success, ) = to.call{value: value}(new bytes(0));
    require(success, 'BNB_TRANSFER_FAILED');
  }

  /**
   * @dev transfer ERC20 from the utility contract, for ERC20 recovery in case of stuck tokens due
   * direct transfers to the contract address.
   * @param token token to transfer
   * @param to recipient of the transfer
   * @param amount amount to send
   */
  function emergencyTokenTransfer(
    address token,
    address to,
    uint256 amount
  ) external onlyOwner {
    IERC20(token).safeTransfer(to, amount);
  }

  /**
   * @dev transfer native BNB from the utility contract, for native BNB recovery in case of stuck BNB
   * due selfdestructs or transfer BNB to pre-computated contract address before deployment.
   * @param to recipient of the transfer
   * @param amount amount to send
   */
  function emergencyBNBTransfer(address to, uint256 amount) external onlyOwner {
    _safeTransferBNB(to, amount);
  }

  /**
   * @dev Only WBNB contract is allowed to transfer BNB here. Prevent other addresses to send BNB to this contract.
   */
  receive() external payable {
    require(msg.sender == address(wbnb), 'Receive not allowed');
  }

  /**
   * @dev Revert fallback calls
   */
  fallback() external payable {
    revert('Fallback not allowed');
  }
}