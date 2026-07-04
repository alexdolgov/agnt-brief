pragma solidity 0.7.6;
pragma abicoder v2;

import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/token/ERC20/SafeERC20.sol';
import '@openzeppelin/contracts/math/SafeMath.sol';
import '@openzeppelin/contracts/access/Ownable.sol';


interface ISwapRouter {
    struct ExactInputSingleParams {
        address tokenIn;
        address tokenOut;
        address deployer;
        address recipient;
        uint256 deadline;
        uint256 amountIn;
        uint256 amountOutMinimum;
        uint160 limitSqrtPrice;
    }

    /// @notice Swaps `amountIn` of one token for as much as possible of another token
    /// @param params The parameters necessary for the swap, encoded as `ExactInputSingleParams` in calldata
    /// @return amountOut The amount of the received token
    function exactInputSingle(ExactInputSingleParams calldata params) external payable returns (uint256 amountOut);
}


contract ConverterV3 is Ownable {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    uint256 private constant MAX_UINT = type(uint256).max;

    address public immutable platformToken;

    address public immutable WNATIVE;

    address[] public receivers;

    uint256[] public feeShare;

    address public router;

    struct Bridge {
        address token;
        address deployer;
    }

    // V1 - V5: OK
    mapping(address => Bridge) internal _bridges;

    // E1: OK
    event LogBridgeSet(address indexed token, address indexed bridge, address deployer);
    // E1: OK
    event LogConvert(
        address indexed server,
        address indexed token,
        uint256 amount
    );

    event ReceiverChanged(
        address newReceiver,
        address oldReceiver,
        uint256 indexed index
    );

    event FeeShareChanged(
        uint256[] oldFeeShare,
        uint256[] newFeeShare
    );

    constructor(
        address _platformToken,
        address _WNATIVE,
        address _router,
        address[] memory _receivers,
        uint256[] memory _feeShare
    ) public {
        platformToken = _platformToken;
        WNATIVE = _WNATIVE;
        router = _router;

        require(_receivers.length == _feeShare.length, "Invalid data");
        receivers = _receivers;

        uint256 totalFee = 0;

        for (uint256 i = 0; i < _feeShare.length; i++) {
            totalFee = totalFee + _feeShare[i];
        }

        require(totalFee == 10000, "Invalid fee params");

        feeShare = _feeShare;
    }

    function changeRouter(address _router) external onlyOwner {
        require(_router != address(0), "Invalid router");
        router = _router;
    }
    
    function bridgeFor(address token) public view returns (Bridge memory bridge) {
        bridge = _bridges[token];
    }

    
    function setBridge(address token, Bridge calldata bridge) external onlyOwner {
        // Checks
        require(
            token != platformToken && token != bridge.token,
            "QuickConverter: Invalid bridge"
        );

        // Effects
        _bridges[token] = bridge;
        emit LogBridgeSet(token, bridge.token, bridge.deployer);
    }

    function changeReceiver(address _receiver, uint256 index) external onlyOwner {
        require(_receiver != address(0), "Inavlid receiver");
        address oldReceiver = receivers[index];
        receivers[index] = _receiver;

        emit ReceiverChanged(
            _receiver,
            oldReceiver,
            index
        );
    }

    function changeFeeShareConfig(uint256[] memory _feeShare) external onlyOwner {
        require(receivers.length == _feeShare.length, "Invalid data");

        uint256 totalFee = 0;

        for (uint256 i = 0; i < _feeShare.length; i++) {
            totalFee = totalFee + _feeShare[i];
        }

        require(totalFee == 10000, "Invalid fee params");

        emit FeeShareChanged(
            feeShare,
            _feeShare
        );

        feeShare = _feeShare;

    }

    function withdrawToken(address token, address recipient, uint256 amount) external onlyOwner {
        IERC20(token).transfer(recipient, amount);
    }

    // It's not a fool proof solution, but it prevents flash loans, so here it's ok to use tx.origin
    modifier onlyEOA() {
        // Try to make flash-loan exploit harder to do by only allowing externally owned addresses.
        require(msg.sender == tx.origin, "QuickConverter: must use EOA");
        _;
    }

    // F1 - F10: OK
    // F3: _convert is separate to save gas by only checking the 'onlyEOA' modifier once in case of convertMultiple
    // F6: There is an exploit to add lots of QUICK to the dragonLair, run convert, then remove the QUICK again.
    //     As the size of the DragonLair has grown, this requires large amounts of funds and isn't super profitable anymore
    //     The onlyEOA modifier prevents this being done with a flash loan.
    // C1 - C24: OK
    function convert(ConvertParam calldata convertParam) external onlyEOA() {
        _convert(convertParam);
        distribute();
    }

    struct ConvertParam {
        address token;
        address deployer;
    }


    // F1 - F10: OK, see convert
    // C1 - C24: OK
    // C3: Loop is under control of the caller
    function convertMultiple(
        ConvertParam[] calldata convertParams, uint256 minAmountOut
    ) external onlyEOA() returns (uint256 amountOut) {
        // TODO: This can be optimized a fair bit, but this is safer and simpler for now

        uint256 len = convertParams.length;
        for (uint256 i = 0; i < len; i++) {
            _convert(convertParams[i]);
        }

        amountOut = IERC20(platformToken).balanceOf(address(this));

        if (amountOut < minAmountOut) revert('not enough tokens out');

        distribute();
    }

    function _convert(ConvertParam calldata convertParam) internal {
        
        uint256 amount = IERC20(convertParam.token).balanceOf(address(this));
        if (amount > 0) {
            _convertStep(convertParam.token, convertParam.deployer, amount);
        }

        emit LogConvert(
            msg.sender,
            convertParam.token,
            amount
        );
        
    }

    // F1 - F10: OK
    // C1 - C24: OK
    // All _swap, _toPlatformToken, _convertStep: X1 - X5: OK
    function _convertStep(
        address token,
        address deployer,
        uint256 amount
    ) internal returns (uint256 platformTokenOut) {
        // Interactions
        if (token == platformToken) {
            // eg. QUICK
            platformTokenOut = amount;
        } else if (token == WNATIVE) {
            // eg. WMATIC
            Bridge memory bridge = bridgeFor(WNATIVE);
            platformTokenOut = _toPlatformToken(
                WNATIVE,
                bridge.deployer != address(0) ? bridge.deployer : address(0),
                amount
            );
        } else {
            // eg. USDC
            Bridge memory bridge = bridgeFor(token);
            if (bridge.token == address(0)) {
                platformTokenOut = _convertStep(
                    WNATIVE,
                    deployer,
                    _swap(token, WNATIVE, deployer, amount, address(this))
                );
            } else {
                platformTokenOut = _convertStep(
                    bridge.token,
                    bridge.deployer,
                    _swap(token, bridge.token, bridge.deployer, amount, address(this))
                );
            }
        }
    }

    // F1 - F10: OK
    // C1 - C24: OK
    // All safeTransfer, swap: X1 - X5: OK
    function _swap(
        address fromToken,
        address toToken,
        address deployer,
        uint256 amountIn,
        address to
    ) internal returns (uint256 amountOut) {

        ISwapRouter.ExactInputSingleParams memory params = ISwapRouter.ExactInputSingleParams({
            tokenIn: fromToken,
            tokenOut: toToken,
            deployer: deployer,
            recipient: to,
            deadline: block.timestamp + 100,
            amountIn: amountIn,
            amountOutMinimum: 1,
            limitSqrtPrice: 0
        });
        approve(
            router,
            fromToken,
            amountIn
        );
        amountOut = ISwapRouter(router).exactInputSingle(params);
    }

    // F1 - F10: OK
    // C1 - C24: OK
    function _toPlatformToken(address token, address deployer, uint256 amountIn)
        internal
        returns (uint256 amountOut)
    {
        // X1 - X5: OK
        amountOut = _swap(token, platformToken, deployer, amountIn, address(this));
    }

    function distribute() public {
        uint256 amountPT = IERC20(platformToken).balanceOf(address(this));

        for (uint256 i = 0; i < receivers.length; i++) {
            address receiverAddress = receivers[i];
            uint256 receiverShare = feeShare[i];

            uint256 amount = amountPT.mul(receiverShare).div(10000);

            if (i == receivers.length - 1) {
                amount = IERC20(platformToken).balanceOf(address(this));
            }

            IERC20(platformToken).safeTransfer(receiverAddress, amount);

        }
    }

    function approve(
        address addressToApprove,
        address token,
        uint256 amount
    ) internal {
        IERC20 _token = IERC20(token);
        uint256 allowance = _token.allowance(address(this), addressToApprove);
        if (allowance < amount) {
            _token.safeApprove(addressToApprove, 0);
            _token.safeIncreaseAllowance(addressToApprove, MAX_UINT);
        }
        
    }
}
