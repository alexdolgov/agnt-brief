pragma solidity =0.7.6;

import './interfaces/IUniswapV3Pool.sol';
import './interfaces/IUniswapV3Factory.sol';

contract ProxyAdmin {

    IUniswapV3Factory immutable public factory;

    address public owner;

    address public feeReceiver;

    address public coOwner;

    event CoOwnerChanged(address indexed coOwner);
    event OwnerChanged(address indexed owner);
    event FeeReceiverChanged(address indexed feeReceiver);

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    modifier onlyOwnerOrCoOwner() {
        require(msg.sender == owner || msg.sender == coOwner);
        _;
    }

    constructor(address _factory, address _feeReceiver) {
        require(_factory != address(0), "Invalid address");
        require(_feeReceiver != address(0), "Invalid address");
        factory = IUniswapV3Factory(_factory);
        feeReceiver = _feeReceiver;
        owner = msg.sender;
    }

    function setCoOwner(address _coOwner) external onlyOwner {
        coOwner = _coOwner;
        emit CoOwnerChanged(coOwner);
    }

    function changeFeeReceiver(address _feeReceiver) external onlyOwner {
        require(_feeReceiver != address(0), "Invalid address");
        feeReceiver = _feeReceiver;
        emit FeeReceiverChanged(feeReceiver);
    }

    function changeFactoryOwner(address _newOwner) external onlyOwner {
        require(_newOwner != address(0), "INVALID ADDRESS");
        factory.setOwner(_newOwner);
    }

    function changeOwner(address _newOwner) external onlyOwner {
        require(_newOwner != address(0), "INVALID ADDRESS");
        owner = _newOwner;
        emit OwnerChanged(owner);
    }

    function enableFeeAmount(uint24 fee, int24 tickSpacing) external onlyOwner {
        factory.enableFeeAmount(fee, tickSpacing);
    }

    function setFeeProtocol(
        address pool,
        uint8 feeProtocol0,
        uint8 feeProtocol1
    ) external onlyOwnerOrCoOwner {
        IUniswapV3Pool(pool).setFeeProtocol(feeProtocol0,feeProtocol1);
    }

    function collectProtocolFees(address pool) external returns (uint128, uint128) {
        (uint128 amount0, uint128 amount1) = IUniswapV3Pool(pool).protocolFees();
        (amount0, amount1) = IUniswapV3Pool(pool).collectProtocol(feeReceiver, amount0, amount1);
        return (amount0, amount1);
    }
}