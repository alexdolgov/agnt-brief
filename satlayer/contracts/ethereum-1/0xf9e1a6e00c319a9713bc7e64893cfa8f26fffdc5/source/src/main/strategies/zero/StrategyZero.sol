// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

import "./swap/ParaSwapCaller.sol";
import "../../../interfaces/IPSM.sol";
import "../../../interfaces/IStrategy.sol";
import "../../common/Constants.sol";
import "../../libraries/Errors.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract StrategyZero is Constants, ParaSwapCaller, IStrategy, Initializable {
    using SafeERC20 for IERC20;

    // The address of the PSM contract, created by the cian
    IPSM internal constant PSM = IPSM(0x4F119F538Cb77faAFeb2a857e268Ffb66fE60eee);

    address public vault;

    /**
     * @dev Ensure that this method is only called by the Vault contract.
     */
    modifier onlyVault() {
        if (msg.sender != vault) revert Errors.CallerNotVault();
        _;
    }

    function initialize() external initializer {
        vault = msg.sender;
        IERC20(USDS).safeIncreaseAllowance(address(PSM), type(uint256).max);
        IERC20(DAI).safeIncreaseAllowance(address(PSM), type(uint256).max);
    }

    /**
     * @dev Convert tokens to USDC using ParaSwap, used by the vault
     * @param _token The address of the token to convert.
     * @param _amount The amount of tokens to convert.
     * @param _swapData The swap data for the conversion.
     * @param _swapGetMin The minimum amount of USDC to receive.
     * @return usdcAmount_ The amount of USDC received.
     */
    function convertTokensToUSDC(address _token, uint256 _amount, bytes memory _swapData, uint256 _swapGetMin)
        external
        onlyVault
        returns (uint256 usdcAmount_)
    {
        if (_token == DAI) {
            usdcAmount_ = PSM.dai2usdc(_amount);
        } else if (_token == USDS) {
            usdcAmount_ = PSM.usds2usdc(_amount);
        } else {
            (usdcAmount_,) = _executeSwap(_amount, _token, USDC, _swapData, _swapGetMin);
        }

        IERC20(USDC).safeTransfer(vault, usdcAmount_);
    }

    /**
     * @dev Get the net assets of the strategy, which is always 0.
     */
    function getNetAssets() external pure override returns (uint256) {
        return 0;
    }

    /**
     * @dev This method is not supported in this strategy.
     */
    function onTransferIn(address, uint256) external pure returns (bool) {
        revert Errors.UnSupportedOperation();
    }
}
