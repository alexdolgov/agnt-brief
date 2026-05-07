pragma solidity ^0.8.0;

/**
 * @dev Interface for chainlink oracles to obtain price datas
 */
interface AggregatorV3Interface {
    function decimals() external view returns (uint8);

    function description() external view returns (string memory);

    function version() external view returns (uint256);

    // getRoundData and latestRoundData should both raise "No data present"
    // if they do not have data to report, instead of returning unset values
    // which could be misinterpreted as actual reported values.
    function getRoundData(uint80 _roundId)
        external
        view
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        );

    function latestAnswer() external view returns (int256);
}

interface IPriceSource {
    function latestAnswer() external view returns (uint256);
    function decimals() external view returns (uint8);
}

interface ISdVault {
    function getPricePerFullShare() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
}

interface ICurvePool {
    function get_virtual_price() external view returns (uint256);
    function remove_liquidity(uint256, uint256[2] calldata) external returns (uint256);
}

interface ERC20 {
    function balanceOf(address account) external view returns (uint256);
    function decimals() external view returns (uint256);
    function totalSupply() external view returns (uint256);
}

contract PerfCurvestETHsdVault is IPriceSource {

    address public shares;

    address public sdVault;
    address public crvPool;

    address public eth;
    address public steth;

    uint256 public virtualprice;

    mapping(address => address) oracles;

    event VirtualPrice(
        uint256 price
    );

    constructor(
        address _shares,

        address _sdVault,
        address _crvPool,

        address _EthUsdOracle,
        address _stETHethOracle,

        address _eth,
        address _steth
    ) public {
        shares = _shares;

        sdVault = _sdVault;
        crvPool = _crvPool;
        eth = _eth;
        steth = _steth;
        oracles[eth] = _EthUsdOracle;
        oracles[steth] = _stETHethOracle;
    }

    function updateVirtualPrice() external {
        uint256 _virtualPrice = ICurvePool(crvPool).get_virtual_price();
        
        {
            uint256[2] memory amounts;
            ICurvePool(crvPool).remove_liquidity(0, amounts);
        }

        virtualprice = _virtualPrice;
        emit VirtualPrice(virtualprice);
    }

    // It retrieves the usd value for a sdVault lp token
    function latestAnswer() external view returns (uint256) {
        ISdVault vault = ISdVault(sdVault);
        uint256 pricePerFullShare = vault.getPricePerFullShare();
        ERC20 wrapper = ERC20(shares);

        uint256 ethUsdPrice = uint256(AggregatorV3Interface(oracles[eth]).latestAnswer());

        AggregatorV3Interface stETH = AggregatorV3Interface(oracles[steth]);
        uint256 stETHethPrice = uint256(stETH.latestAnswer());

        uint256 stETHusdPrice = (stETHethPrice*ethUsdPrice) / (10 ** stETH.decimals());

        // calculate min ETH price
        uint256 minPrice = ethUsdPrice;
        if (minPrice > stETHusdPrice) {
            minPrice = stETHusdPrice;
        }

        uint256 price = ((pricePerFullShare * minPrice) * virtualprice); // price has an extra 1e36 decimals

        uint256 newPrice = ( vault.balanceOf(address(shares))* price ) / wrapper.totalSupply() / 1e36;
    }

    function decimals() external view returns (uint8) {
        return 18;
    }

    receive() external payable {}
}
