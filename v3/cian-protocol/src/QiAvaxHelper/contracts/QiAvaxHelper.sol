pragma solidity 0.5.17;

import {QiErc20Interface, QiTokenInterface} from "./QiTokenInterfaces.sol";
import "./OpenZeppelin/SafeMath.sol";
import "./OpenZeppelin/ReentrancyGuard.sol";

/**
 * @title Benqi's QiAvax Helper Contract
 * @notice Redeem helper for QiAvax
 * @author Benqi
 */
contract QiAvaxHelper is ReentrancyGuard {

    using SafeMath for uint;

    address public qiAvax;

    constructor(address _qiAvax) public {
        require(_qiAvax != address(0));

        qiAvax = _qiAvax;
    }

    function redeem(uint redeemTokens) public nonReentrant {
        bool transferFromSuccess = QiTokenInterface(qiAvax).transferFrom(msg.sender, address(this), redeemTokens);
        require(transferFromSuccess, "qiAvax transferFrom failed");

        uint result = QiErc20Interface(qiAvax).redeem(redeemTokens);
        require(result == 0, "qiAvax redeem failed"); // 0 = success, otherwise a failure

        (bool success, ) = msg.sender.call.value(address(this).balance)("");
        require(success, "AVAX transfer failed");
    }

    function redeemUnderlying(uint redeemAmount) external {
        uint exchangeRate = QiTokenInterface(qiAvax).exchangeRateCurrent();
        uint redeemTokens = redeemAmount.mul(1e18).div(exchangeRate);

        redeem(redeemTokens);
    }

    function() external payable {}
}
