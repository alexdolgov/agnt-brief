// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import "../../interfaces/weth/IWETH.sol";
import "../../interfaces/lido/IstETH.sol";
import "../../interfaces/lido/IWithdrawalNft.sol";
import "./Constants.sol";
import "../libraries/Errors.sol";

abstract contract MultiETH is IERC721Receiver, Constants {
    using SafeERC20 for IERC20;

    uint256 public constant PRECISION = 1e18;

    IWithdrawalNft internal constant lidoQueue = IWithdrawalNft(0x889edC2eDab5f40e902b864aD4d7AdE8E412F9B1);
    uint256 public lidoUnstakeId;
    uint256 public etherfiUnstakeId;

    event ConvertToken(address srcToken, address toToken, uint256 amount);
    event ClaimUnstake(address srcToken);

    function _convertToken(address _srcToken, address _toToken, uint256 _amount) internal {
        if (_srcToken == ETH) {
            if (_toToken == WETH) {
                IWETH(WETH).deposit{value: _amount}();
            } else if (_toToken == STETH) {
                IstETH(STETH).submit{value: _amount}(address(0));
            } else {
                revert Errors.InvalidAsset();
            }
        } else if (_srcToken == WETH) {
            IWETH(WETH).withdraw(_amount);
            if (_toToken == ETH) {
                // do nothing
            } else if (_toToken == STETH) {
                IstETH(STETH).submit{value: _amount}(address(0));
            } else {
                revert Errors.InvalidAsset();
            }
        } else if (_srcToken == STETH) {
            if (_toToken == ETH) {
                if (lidoUnstakeId != 0) revert Errors.IncorrectState();
                uint256[] memory amounts_ = new uint256[](1);
                amounts_[0] = _amount;
                IERC20(STETH).safeIncreaseAllowance(address(lidoQueue), _amount);
                uint256[] memory newLidoUnstakeIds_ = lidoQueue.requestWithdrawals(amounts_, address(this));
                lidoUnstakeId = newLidoUnstakeIds_[0];
            } else {
                revert Errors.InvalidAsset();
            }
        } else {
            revert Errors.InvalidAsset();
        }

        emit ConvertToken(_srcToken, _toToken, _amount);
    }

    function _claimUnstake(address _srcToken) internal {
        if (_srcToken == STETH) {
            if (lidoUnstakeId == 0) revert Errors.IncorrectState();
            lidoQueue.claimWithdrawal(lidoUnstakeId);
            lidoUnstakeId = 0;
        } else {
            revert Errors.IncorrectState();
        }

        emit ClaimUnstake(_srcToken);
    }

    function onERC721Received(address, address, uint256, bytes calldata) external pure override returns (bytes4) {
        return this.onERC721Received.selector;
    }

    // to = ETH
    function getUnstakingAmount(address _srcToken) public view returns (uint256) {
        if (_srcToken == STETH) {
            if (lidoUnstakeId == 0) return 0;
            uint256[] memory requestIds_ = new uint256[](1);
            requestIds_[0] = lidoUnstakeId;
            IWithdrawalNft.WithdrawalRequestStatus[] memory statuses_ = lidoQueue.getWithdrawalStatus(requestIds_);
            return statuses_[0].amountOfStETH;
        } else {
            revert Errors.InvalidAsset();
        }
    }

    function getTotalETHBalance() public view returns (uint256) {
        uint256 ethBalance_ = address(this).balance;
        uint256 wethBalance_ = IERC20(WETH).balanceOf(address(this));
        uint256 stethBalance_ = IERC20(STETH).balanceOf(address(this));
        uint256 unstaking_ = getUnstakingAmount(STETH);

        // Assuming 1:1 conversion rate for simplicity
        return ethBalance_ + wethBalance_ + stethBalance_ + unstaking_;
    }
}
