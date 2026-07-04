// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import "./SwapBase.sol";

import "../../node_modules/@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";
import "../interfaces/ISwapContract.sol";

/// @title Swap contract for multisignature bridge
contract SwapContractV2 is ISwapContract, SwapBase {
    using Address for address payable;
    using SafeERC20 for IERC20;

    /**
     * @dev Performs check before swap*ToOtherBlockchain-functions and emits events
     * @param params The swapToParams structure
     * @param value The msg.value
     */
    modifier TransferTo(swapToParams memory params, uint256 value) {
        require(
            params.newAddress != bytes32(0),
            "swapContract: No destination address provided"
        );
        require(
            existingOtherBlockchain[params.blockchain] &&
                params.blockchain != numOfThisBlockchain,
            "swapContract: Wrong choose of blockchain"
        );
        require(
            params.firstPath.length > 0,
            "swapContract: firsPath length must be greater than 1"
        );
        require(
            params.secondPath.length > 0,
            "swapContract: secondPath length must be greater than 1"
        );
        require(
            params.firstPath[params.firstPath.length - 1] ==
                address(uint160(uint256(RubicAddresses[numOfThisBlockchain]))),
            "swapContract: the last address in the firstPath must be Rubic"
        );
        require(
            params.secondPath[0] == RubicAddresses[params.blockchain],
            "swapContract: the first address in the secondPath must be Rubic"
        );
        require(
            params.exactRBCtokenOut >= minTokenAmount,
            "swapContract: Not enough amount of tokens"
        );
        require(
            value >= blockchainCryptoFee[params.blockchain],
            "swapContract: Not enough crypto provided"
        );
        _;
        if (params.swapToCrypto) {
            emit TransferCryptoToOtherBlockchainUser(
                params.exactRBCtokenOut,
                params.tokenInAmount,
                params.provider
            );
        } else {
            emit TransferTokensToOtherBlockchainUser(
                params.exactRBCtokenOut,
                params.tokenInAmount,
                params.provider
            );
        }
    }

    /**
     * @dev Performs check before swap*ToUser-functions
     * @param params The swapFromParams structure
     */
    modifier TransferFrom(swapFromParams memory params) {
        uint256 _numOfThisBlockchain = numOfThisBlockchain; //SLOAD: gas optimization

        require(params.initBlockchainNum != _numOfThisBlockchain,
            "swapContract: init blockchain cant be equal to current"
        );
        require(
            params.amountWithFee >= minTokenAmount,
            "swapContract: Not enough amount of tokens"
        );
        require(
            params.amountWithFee <= maxTokenAmount,
            "swapContract: Too many RBC requested"
        );
        require(
            params.path.length > 0,
            "swapContract: path length must be greater than 1"
        );
        require(
            params.path[0] == address(uint160(uint256(RubicAddresses[_numOfThisBlockchain]))),
            "swapContract: the first address in the path must be Rubic"
        );
        require(
            params.user != address(0),
            "swapContract: Address cannot be zero address"
        );
        require(
            params.concatSignatures.length % SIGNATURE_LENGTH == 0,
            "swapContract: Signatures lengths must be divisible by 65"
        );
        require(
            params.concatSignatures.length / SIGNATURE_LENGTH >=
                minConfirmationSignatures,
            "swapContract: Not enough signatures passed"
        );

        _processTransaction(
            params.user,
            params.amountWithFee,
            params.originalTxHash,
            numOfThisBlockchain,
            params.concatSignatures
        );
        _;
    }

    function _swapTo(swapToParams memory params, IERC20 tokenIn) private{
        uint256 _allowance = tokenIn.allowance(address(this), blockchainRouter);
        if (_allowance < params.tokenInAmount){
            if (_allowance == 0){
                tokenIn.safeApprove(blockchainRouter, type(uint256).max);
            }
            else{
                try tokenIn.approve(blockchainRouter, type(uint256).max) returns (bool res){
                    require(res == true, 'SwapContract: approve failed');
                }
                catch {
                    tokenIn.safeApprove(blockchainRouter, 0);
                    tokenIn.safeApprove(blockchainRouter, type(uint256).max);
                }
            }
        }
        if (params.swapExactFor){
            if (params.withFee){
                IERC20 Rubic = IERC20(address(uint160(uint256(RubicAddresses[numOfThisBlockchain]))));
                uint256 balanceBefore = Rubic.balanceOf(address(this));
                IUniswapV2Router02(blockchainRouter).swapExactTokensForTokensSupportingFeeOnTransferTokens(
                    params.tokenInAmount,
                    params.exactRBCtokenOut,
                    params.firstPath,
                    address(this),
                    block.timestamp
                );
                params.exactRBCtokenOut = Rubic.balanceOf(address(this)) - balanceBefore;
            }else{
                uint[] memory amounts = IUniswapV2Router02(blockchainRouter).swapExactTokensForTokens(
                    params.tokenInAmount,
                    params.exactRBCtokenOut,
                    params.firstPath,
                    address(this),
                    block.timestamp
                );
                params.exactRBCtokenOut = amounts[amounts.length - 1];
            }
            require(
                params.exactRBCtokenOut <= maxTokenAmount,
                "swapContract: Too many RBC requested"
            );
        }
        else{
            require(
                params.exactRBCtokenOut <= maxTokenAmount,
                "swapContract: Too many RBC requested"
            );
            uint256[] memory amounts = IUniswapV2Router02(blockchainRouter)
                .swapTokensForExactTokens(
                    params.exactRBCtokenOut,
                    params.tokenInAmount,
                    params.firstPath,
                    address(this),
                    block.timestamp
            );
            tokenIn.safeTransfer(
                msg.sender,
                params.tokenInAmount - amounts[0]
            );
            params.tokenInAmount = amounts[0];
        }
    }

    /**
     * @dev Transfers tokens from sender to the contract.
     * User calls this function when he wants to transfer tokens to another blockchain.
     * @notice User must have approved tokenInAmount of tokenIn
     */
    function _swapTokensToOtherBlockchain(swapToParams memory params)
        internal
        whenNotPaused
        TransferTo(params, msg.value)
    {
        IERC20 tokenIn = IERC20(params.firstPath[0]);
        if (params.firstPath.length > 1) {
            if (params.withFee){
                uint256 actualBalance = tokenIn.balanceOf(address(this));
                tokenIn.safeTransferFrom(
                    msg.sender,
                    address(this),
                    params.tokenInAmount
                );
                actualBalance = tokenIn.balanceOf(address(this)) - actualBalance;
                params.tokenInAmount = actualBalance;
            }
            else{
                tokenIn.safeTransferFrom(
                    msg.sender,
                    address(this),
                    params.tokenInAmount
                );
            }
            _swapTo(params, tokenIn);
        } else {
            tokenIn.safeTransferFrom(
                msg.sender,
                address(this),
                params.exactRBCtokenOut
            );
        }
    }

    /**
     * @dev Transfers tokens from sender to the contract.
     * User calls this function when he wants to transfer tokens to another blockchain.
     * @notice User must have approved tokenInAmount of tokenIn
     */
    function _swapCryptoToOtherBlockchain(swapToParams memory params)
        internal
        whenNotPaused
        TransferTo(params, msg.value)
    {
        uint256 cryptoWithoutFee = msg.value -
            blockchainCryptoFee[params.blockchain];

        if (params.swapExactFor){
            uint256[] memory amounts = IUniswapV2Router02(blockchainRouter).swapExactETHForTokens{
                value: cryptoWithoutFee
            }(
                params.exactRBCtokenOut,
                params.firstPath,
                address(this),
                block.timestamp
            );
            params.exactRBCtokenOut = amounts[amounts.length - 1];
        }
        else{
            uint256[] memory amounts = IUniswapV2Router02(blockchainRouter).swapETHForExactTokens{
                value: cryptoWithoutFee
            }(
                params.exactRBCtokenOut,
                params.firstPath,
                address(this),
                block.timestamp
            );
            params.tokenInAmount = amounts[0];
            payable(_msgSender()).sendValue(cryptoWithoutFee - amounts[0]);
        }
    }

    /**
     * @dev Transfers tokens to end user in current blockchain
     */
    function _swapTokensToUserWithFee(swapFromParams memory params)
        internal
        onlyRelayer
        whenNotPaused
        TransferFrom(params)
    {
        uint256 amountWithoutFee = _calculateFee(params.provider, params.amountWithFee, params.initBlockchainNum);

        IERC20 RBCToken = IERC20(params.path[0]);

        if (params.path.length == 1) {
            RBCToken.safeTransfer(
                params.user,
                amountWithoutFee
            );
        } else {
            IUniswapV2Router02(blockchainRouter).swapExactTokensForTokens(
                amountWithoutFee,
                params.amountOutMin,
                params.path,
                params.user,
                block.timestamp
            );
        }
        emit TransferFromOtherBlockchain(
            params.user,
            params.amountWithFee,
            amountWithoutFee,
            params.originalTxHash
        );
    }

    /**
     * @dev Transfers tokens to end user in current blockchain
     */
    function _swapCryptoToUserWithFee(swapFromParams memory params)
        internal
        onlyRelayer
        whenNotPaused
        TransferFrom(params)
    {
        uint256 amountWithoutFee = _calculateFee(params.provider, params.amountWithFee, params.initBlockchainNum);

        IUniswapV2Router02(blockchainRouter).swapExactTokensForETH(
            amountWithoutFee,
            params.amountOutMin,
            params.path,
            params.user,
            block.timestamp
        );
        emit TransferFromOtherBlockchain(
            params.user,
            params.amountWithFee,
            amountWithoutFee,
            params.originalTxHash
        );
    }
}