pragma solidity ^0.8.17;

import "../interfaces/IWETH.sol";
import "../interfaces/IAlgebraSwapRouter.sol";
import "../interfaces/IStellaSwapV2Router02.sol";
import "../interfaces/ISignatureTransfer.sol";
import "../interfaces/IStableSwapRouter.sol";
import "../interfaces/IStellaSwapV2ERC20.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

struct RouterParameters {
    IAlgebraSwapRouter v3router;
    IStellaSwapV2Router02 v2router;
    IStableSwapRouter stableRouter;
    ISignatureTransfer permit2;
    IWETH weth;
}

contract AggregatorBase is Initializable {

    //Aggregator is a contract that takes commands, data, and a signature from the user
    //to transfer their tokens to operate on them. 
    ISignatureTransfer public permit2;
    IAlgebraSwapRouter public v3Router;
    IStellaSwapV2Router02 public v2router;
    IStableSwapRouter public stableRouter;
    IWETH public weth;

    string public constant WITNESS_TYPE_STRING =
        "Witness witness)TokenPermissions(address token,uint256 amount)Witness(address user)";

    bytes32 public constant WITNESS_TYPEHASH =
        keccak256("Witness(address user)");

    enum AMM {
        V2,
        V3,
        STABLE
    }

    //will the tokens stay in the router for the next command to use or go to user?
    enum Destination {
        ROUTER,
        MSG_SENDER
    }

    //v2 v3 stable etc all use the same commands for simplifying the API
    enum InstructionType {
        V3_EXACT_IN,
        V3_EXACT_OUT,
        V2_EXACT_IN,
        V2_EXACT_OUT,
        PERMIT2_TRANSFER, //giving tokens for aggregator to trade with
        WRAP_ETH, //turn users GLMR to WGLMR
        UNWRAP_ETH, //reverse
        SWEEP, //say user had negative slippage, send the remaining funds back
        TRANSFER, // simple transfer helper
        STABLE_SIMPLE, // simple transfer helper
        STABLE_TO_BASE,// simple transfer helper
        STABLE_FROM_BASE // simple transfer helper
    }

    struct SwapArguments {
        uint256 inputAmount;
        uint256 outputAmount;
        uint256 desiredInput;
        uint256 desiredOutput;
    }

    struct Command {
        InstructionType instruction;
    }

    struct Witness {
        // Address of the user that signer is giving the tokens to
        address user;
    }

    function initializerr(RouterParameters memory params) public onlyInitializing {
        
        permit2 = params.permit2;
        v3Router = params.v3router;
        v2router = params.v2router;
        stableRouter = params.stableRouter;
        weth = params.weth;
    }
}
