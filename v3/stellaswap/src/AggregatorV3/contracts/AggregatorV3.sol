// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.9;

import "./base/AggregatorBase.sol";
import "./helpers/TransferHelper.sol";
import "./interfaces/IAlgebraSwapRouter.sol";
import "./helpers/Path.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract AggregatorV3 is AggregatorBase {
    using Path for bytes;

    function initialize(RouterParameters memory params) public initializer {
        AggregatorBase.initializerr(params);
    }
    
    function execute(
        Command[] calldata commands,
        bytes[] calldata inputs // with abi.encode it gives InvalidSignatureLength(), so we pass here
    ) public payable {
        require(commands.length <= 15, "Too many commands for executor.");
        require(
            commands.length == inputs.length,
            "Amount of commands must match inputs."
        );

        for (uint256 i = 0; i < commands.length; ++i) {
            if (commands[i].instruction == InstructionType.V3_EXACT_IN) {
                (
                    bytes memory path,
                    address recipient,
                    uint256 deadline,
                    uint256 amountIn,
                    uint256 amountOutMinimum
                ) = abi.decode(
                        inputs[i],
                        (bytes, address, uint256, uint256, uint256)
                    );
                require(recipient != address(0), "Zero Address");
                //fetch the first token
                (address tokenA,) = path.decodeFirstPool();
                IStellaSwapV2ERC20(tokenA).approve(address(v3Router),amountIn);

                IAlgebraSwapRouter(v3Router).exactInput(
                    IAlgebraSwapRouter.ExactInputParams({
                        path: path,
                        recipient: recipient,
                        deadline: deadline,
                        amountIn: amountIn,
                        amountOutMinimum: amountOutMinimum
                    })
                );
            }
            if (commands[i].instruction == InstructionType.V3_EXACT_OUT) {
                (
                    bytes memory path,
                    address recipient,
                    uint256 deadline,
                    uint256 amountOut,
                    uint256 amountInMaximum
                ) = abi.decode(
                        inputs[i],
                        (bytes, address, uint256, uint256, uint256)
                    );
                require(recipient != address(0), "Zero Address");
                //approve last token in the reversed path in v3_exact_out
                address lastToken = path.getLastPoolToken();
                IStellaSwapV2ERC20(lastToken).approve(address(v3Router), amountInMaximum);
                
                //need to encode path
                IAlgebraSwapRouter(v3Router).exactOutput(
                    IAlgebraSwapRouter.ExactOutputParams({
                        path: path,
                        recipient: recipient,
                        deadline: deadline,
                        amountOut: amountOut,
                        amountInMaximum: amountInMaximum
                    })
                );
            }

            if (commands[i].instruction == InstructionType.V2_EXACT_IN) {
                (
                    uint256 amountIn,
                    uint256 amountOutMin,
                    address[] memory path,
                    address to,
                    uint256 deadline
                ) = abi.decode(
                        inputs[i],
                        (uint256, uint256, address[], address, uint256)
                    );
                require(to != address(0), "Zero Address");
                IStellaSwapV2ERC20(path[0]).approve(address(v2router), amountIn);
                v2router.swapExactTokensForTokens(amountIn, amountOutMin, path, to, deadline);
            }
            if (commands[i].instruction == InstructionType.V2_EXACT_OUT) {
                (
                    uint256 amountOut,
                    uint256 amountInMax,
                    address[] memory path,
                    address to,
                    uint256 deadline
                ) = abi.decode(
                        inputs[i],
                        (uint256, uint256, address[], address, uint256)
                    );
                require(to != address(0), "Zero Address");
                IStellaSwapV2ERC20(path[0]).approve(address(v2router), amountInMax);
                v2router.swapTokensForExactTokens(amountOut, amountInMax, path, to, deadline);
            }

            if (commands[i].instruction == InstructionType.STABLE_SIMPLE) {
                (
                    address basepool,
                    uint8 tokenIndexFrom,
                    uint8 tokenIndexTo,
                    uint256 dx,
                    uint256 minDy,
                    uint256 deadline
                ) = abi.decode(
                        inputs[i],
                        (address, uint8, uint8, uint256, uint256, uint256)
                    );

                _stableApproval(basepool, tokenIndexFrom, dx);
                IStableSwap(basepool).swap(tokenIndexFrom, tokenIndexTo, dx, minDy, deadline);
            }

            if (commands[i].instruction == InstructionType.STABLE_FROM_BASE) {
                (
                    address pool,
                    address basePool,
                    uint8 tokenIndexFrom,
                    uint8 tokenIndexTo,
                    uint256 dx,
                    uint256 minDy,
                    uint256 deadline
                ) = abi.decode(
                        inputs[i],
                        (
                            address,
                            address,
                            uint8,
                            uint8,
                            uint256,
                            uint256,
                            uint256
                        )
                    );
                    _stableApproval(basePool, tokenIndexFrom, dx);
                    stableRouter.swapFromBase(IStableSwap(pool), IStableSwap(basePool), tokenIndexFrom, tokenIndexTo, dx, minDy, deadline);

            }

            if (commands[i].instruction == InstructionType.STABLE_TO_BASE) {
                (
                    address pool,
                    address basePool,
                    uint8 tokenIndexFrom,
                    uint8 tokenIndexTo,
                    uint256 dx,
                    uint256 minDy,
                    uint256 deadline
                ) = abi.decode(
                        inputs[i],
                        (
                            address,
                            address,
                            uint8,
                            uint8,
                            uint256,
                            uint256,
                            uint256
                        )
                    );
                    
                    address poolToken = IStableSwap(pool).getToken(tokenIndexFrom);
                    IStellaSwapV2ERC20(poolToken).approve(address(stableRouter), dx);
                    stableRouter.swapToBase(IStableSwap(pool), IStableSwap(basePool), tokenIndexFrom, tokenIndexTo, dx, minDy, deadline);
            }

            if (commands[i].instruction == InstructionType.PERMIT2_TRANSFER) {  
                (
                    uint256 _amount,
                    address _owner,
                    address _user,
                    address _token,
                    uint256 _nonce,
                    uint256 _deadline,
                    bytes memory _signature
                ) = abi.decode(
                        inputs[i],
                        (
                            uint256,
                            address,
                            address,
                            address,
                            uint256,
                            uint256,
                            bytes
                        )
                    );
                address permit2addr = address(permit2);
                ISignatureTransfer.TokenPermissions
                    memory permitted = ISignatureTransfer.TokenPermissions({
                        amount: _amount,
                        token: _token
                    });

                ISignatureTransfer(permit2addr).permitWitnessTransferFrom(
                    ISignatureTransfer.PermitTransferFrom({
                        permitted: permitted,
                        nonce: _nonce,
                        deadline: _deadline
                    }),
                    ISignatureTransfer.SignatureTransferDetails({
                        to: address(this),
                        requestedAmount: _amount
                    }),
                    msg.sender,
                    // witness
                    keccak256(abi.encode(WITNESS_TYPEHASH, Witness(_user))),
                    // witnessTypeString,
                    WITNESS_TYPE_STRING,
                    _signature
                );
            }

            if (commands[i].instruction == InstructionType.WRAP_ETH) {
                uint256 amount = abi.decode(inputs[i], (uint256));
                require(
                    address(this).balance >= amount,
                    "Insufficient ETH balance"
                );
                weth.deposit{value: amount}();
            }

            if (commands[i].instruction == InstructionType.UNWRAP_ETH) {
                //wglmr.withdraw (with users permit signature)
                uint256 amount = abi.decode(inputs[i], (uint256));
                weth.withdraw(amount);
            }

            if (commands[i].instruction == InstructionType.TRANSFER) {
                (
                    address token,
                    address recipient,
                    uint256 value,
                    bool isEth
                ) = abi.decode(inputs[i], (address, address, uint256, bool));
                require(recipient != address(0), "Zero Address");

                if (isEth) {
                    TransferHelper.safeTransferETH(recipient, value);
                } else {
                    TransferHelper.safeTransfer(token, recipient, value);
                }
            }

            if (commands[i].instruction == InstructionType.SWEEP) {
                (
                    address token,
                    address recipient,
                    bool isEth
                ) = abi.decode(inputs[i], (address, address, bool));
                
                require(recipient != address(0), "Zero Address");
                if (isEth) {
                    uint256 balance = address(this).balance;
                    TransferHelper.safeTransferETH(recipient, balance);
                } else {
                    uint256 balance = IStellaSwapV2ERC20(token).balanceOf(address(this));
                    TransferHelper.safeTransfer(token, recipient, balance);
                }
            }
        }
    }

    function _stableApproval(address pool, uint8 tokenIndex, uint256 amount) internal {
        address poolToken = IStableSwap(pool).getToken(tokenIndex);
        IStellaSwapV2ERC20(poolToken).approve(address(pool), amount);

        IStellaSwapV2ERC20(poolToken).approve(address(stableRouter), amount);
    }

    receive() external payable {}
}
