// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {IPermit2} from "./interfaces/pancake/IPermit2.sol";
import {IUniversalRouter} from "./interfaces/pancake/IUniversalRouter.sol";
import {IHooks} from "./interfaces/pancake/IHooks.sol";
import {PoolKey} from "./interfaces/pancake/PoolKey.sol";
import {Commands} from "./interfaces/pancake/Commands.sol";
import {Actions} from "./interfaces/pancake/Actions.sol";
import {Planner, Plan} from "./interfaces/pancake/Planner.sol";
import {Currency} from "./interfaces/pancake/Currency.sol";
import {PoolId} from "./interfaces/pancake/PoolId.sol";
import {ActionConstants} from "./interfaces/pancake/ActionConstants.sol";

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract PancakeSwapExample {
    IUniversalRouter public constant router =
        IUniversalRouter(0xd9C500DfF816a1Da21A48A732d3498Bf09dc9AEB);
    IPermit2 public constant permit2 =
        IPermit2(0x31c2F6fcFf4F8759b3Bd5Bf0e1084A055615c768);
    bytes32 public constant poolId =
        0x8908749b4b370b75434949c8dff08aa493b3d28d2509a4b6dd7058d7484c031a;
    address public constant CLPoolManager =
        0xa0FfB9c1CE1Fe56963B0321B32E7A0302114058b;
    address public constant Hooks = 0x9a9B5331ce8d74b2B721291D57DE696E878353fd;

    struct CLSwapExactInputSingleParams {
        PoolKey poolKey;
        bool zeroForOne;
        uint128 amountIn;
        uint128 amountOutMinimum;
        bytes hookData;
    }

    function swap(uint256 amountIn) external payable {
        PoolKey memory poolKey = PoolKey({
            currency0: Currency.wrap(
                0x0000000000000000000000000000000000000000
            ),
            currency1: Currency.wrap(
                0xFB93EE8152dd0a0e6F4b49C66c06d800Cf1Db72d
            ),
            hooks: IHooks(Hooks),
            poolManager: CLPoolManager,
            fee: 3000,
            parameters: 0x00
        });
        // step 1: build the Infinity swap param
        CLSwapExactInputSingleParams
            memory params = CLSwapExactInputSingleParams({
                poolKey: poolKey,
                zeroForOne: true,
                amountIn: uint128(amountIn),
                amountOutMinimum: 0,
                hookData: ""
            });

        // Step 2: build the Infinity payload
        Plan memory plan = Planner.init();
        plan.add(Actions.CL_SWAP_EXACT_IN_SINGLE, abi.encode(params));
        bytes memory data = plan.finalizeSwap(
            poolKey.currency0,
            poolKey.currency1,
            ActionConstants.MSG_SENDER
        );

        // step 3: build command/input
        bytes memory commands = abi.encodePacked(
            bytes1(uint8(Commands.INFI_SWAP))
        );
        bytes[] memory inputs = new bytes[](1);
        inputs[0] = data;

        // Step 4: call universal router
        router.execute(commands, inputs);
    }

    function preview(
        uint256 amountIn
    ) external pure returns (bytes memory commands, bytes[] memory inputs) {
        PoolKey memory poolKey = PoolKey({
            currency0: Currency.wrap(
                0x0000000000000000000000000000000000000000
            ),
            currency1: Currency.wrap(
                0xFB93EE8152dd0a0e6F4b49C66c06d800Cf1Db72d
            ),
            hooks: IHooks(Hooks),
            poolManager: CLPoolManager,
            fee: 3000,
            parameters: 0x00
        });
        // step 1: build the Infinity swap param
        CLSwapExactInputSingleParams
            memory params = CLSwapExactInputSingleParams({
                poolKey: poolKey,
                zeroForOne: true,
                amountIn: uint128(amountIn),
                amountOutMinimum: 0,
                hookData: ""
            });

        // Step 2: build the Infinity payload
        Plan memory plan = Planner.init();
        plan.add(Actions.CL_SWAP_EXACT_IN_SINGLE, abi.encode(params));
        bytes memory data = plan.finalizeSwap(
            poolKey.currency0,
            poolKey.currency1,
            ActionConstants.MSG_SENDER
        );

        // step 3: build command/input
        commands = abi.encodePacked(bytes1(uint8(Commands.INFI_SWAP)));
        inputs = new bytes[](1);
        inputs[0] = data;
    }
}
