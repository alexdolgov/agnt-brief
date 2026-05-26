// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

import './interface/IERC20.sol';
import './interface/IMigratable.sol';
import './interface/IUniswapV2Router02.sol';
import './library/SafeERC20.sol';
import './utils/Migratable.sol';

contract ProtocolFeeCollector is Migratable {

    event BuyAndBurnDeri(uint256 bTokenAmount, uint256 deriAmount);

    using SafeERC20 for IERC20;

    // DERI token address
    address public deri;
    // BToken0 token address
    address public bToken;
    // burningDestination address, the DERI bought will be sent to this burningDestination
    address public burningDestination;
    // Uniswap like swapRouter address
    address public swapRouter;

    address public sourceCollector; // source is dead after migration, we want this contract to manipulate any remaining tokens in source collector

    constructor (
        address deri_,
        address bToken_,
        address burningDestination_,
        address swapRouter_
    ) {
        deri = deri_;
        bToken = bToken_;
        burningDestination = burningDestination_;
        swapRouter = swapRouter_;

        IERC20(bToken_).safeApprove(swapRouter, type(uint256).max);

        _controller = msg.sender;
    }

    function setSourceCollector(address source) external _controller_ {
        require(IMigratable(source).migrationDestination() == address(this), 'not destination');
        sourceCollector = source;
    }

    function approveMigration() external override _controller_ {
        require(_migrationTimestamp != 0 && block.timestamp >= _migrationTimestamp, 'ProtocolFeeCollector: migrationTimestamp not met yet');
        IERC20(bToken).safeApprove(_migrationDestination, type(uint256).max);
    }

    function executeMigration(address source) external override _controller_ {
        uint256 migrationTimestamp_ = IMigratable(source).migrationTimestamp();
        address migrationDestination_ = IMigratable(source).migrationDestination();

        require(migrationTimestamp_ != 0 && block.timestamp >= migrationTimestamp_, 'ProtocolFeeCollector: migrationTimestamp not met yet');
        require(migrationDestination_ == address(this), 'ProtocolFeeCollector: not migrationDestination');

        IERC20(bToken).safeTransferFrom(source, address(this), IERC20(bToken).balanceOf(source));

        emit ExecuteMigration(migrationTimestamp_, source, address(this));
    }

    function transferSource() external _controller_ {
        require(sourceCollector != address(0), 'no source');
        uint256 balance = IERC20(bToken).balanceOf(sourceCollector);
        if (balance != 0) {
            IERC20(bToken).safeTransferFrom(sourceCollector, address(this), balance);
        }
    }

    function transferToDestination() external _controller_ {
        require(_migrationDestination != address(0), 'no destination');
        uint256 balance = IERC20(bToken).balanceOf(address(this));
        if (balance != 0) {
            IERC20(bToken).safeTransfer(_migrationDestination, balance);
        }
    }

    function buyAndBurnDeri(uint256 amount) external _controller_ {
        if (sourceCollector != address(0)) {
            uint256 balance = IERC20(bToken).balanceOf(sourceCollector);
            if (balance != 0) {
                IERC20(bToken).safeTransferFrom(sourceCollector, address(this), balance);
            }
        }

        uint256 bTokenBalance = IERC20(bToken).balanceOf(address(this));
        require(bTokenBalance >= amount, 'ProtocolFeeCollector.buyAndBurnDeri: amount exceed balance');

        address[] memory path = new address[](2);
        path[0] = bToken;
        path[1] = deri;

        uint256 deriBalance1 = IERC20(deri).balanceOf(burningDestination);
        IUniswapV2Router02(swapRouter).swapExactTokensForTokens(amount, 0, path, burningDestination, block.timestamp + 3600);
        uint256 deriBalance2 = IERC20(deri).balanceOf(burningDestination);

        emit BuyAndBurnDeri(amount, deriBalance2 - deriBalance1);
    }

}
