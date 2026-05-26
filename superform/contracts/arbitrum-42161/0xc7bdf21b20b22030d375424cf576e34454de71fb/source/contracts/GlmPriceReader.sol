// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;
import { IChainlinkOracle } from "./interfaces/IChainlinkOracle.sol";
import { IERC4626Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol";
import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { IGlmManager } from "./interfaces/IGlmManager.sol";
import { IOracle, IReader, Market, Price, MarketPoolValueInfo } from "./interfaces/Gmx/IOracle.sol";
import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { IGlmPriceReader } from "./interfaces/IGlmPriceReader.sol";

/**
 * @title Glm Token Price Reader
 * @notice This contract is responsible for getting price from chainlink and calculate the price of GM tokens
 * @author Vaultka
 **/

contract GlmPriceReader is IGlmPriceReader, OwnableUpgradeable {
    address public glmManager;
    address public glmVault;
    address public arbitrumSequencer;
    GMXAddresses public gmxAddresses;
    uint256 private constant GRACE_PERIOD_TIME = 3600; // 1 hour
    mapping(address => address) public chainlinkOracle;

    uint256[50] __gaps;

    /*//////////////////////////////////////////////////////////////
                            INIT FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize() public initializer {
        __Ownable_init();
    }

    /*//////////////////////////////////////////////////////////////
                      STRATEGY PARAMETERS SETTERS
    //////////////////////////////////////////////////////////////*/

    //function to set arbitrumSequencer with an event
    function setArbitrumSequencer(address _arbitrumSequencer) external onlyOwner {
        arbitrumSequencer = _arbitrumSequencer;
        emit SetArbitrumSequencer(_arbitrumSequencer);
    }

    function setGmxAddresses(address _reader, address _dataStore) external onlyOwner {
        gmxAddresses = GMXAddresses({ reader: _reader, dataStore: _dataStore });
        emit SetGmxAddresses(_reader, _dataStore);
    }

    function setGlmAddresses(address _glmManager, address _glmVault) external onlyOwner {
        glmManager = _glmManager;
        glmVault = _glmVault;
        emit SetGlmAddresses(_glmManager, _glmVault);
    }

    //add items to the the chainlinkOracle mapping
    function setChainlinkOracle(address _token, address _oracle) external onlyOwner {
        chainlinkOracle[_token] = _oracle;
        emit SetChainlinkOracle(_token, _oracle);
    }

    //@todo  if sequencer is down, pause the contract!
    /*//////////////////////////////////////////////////////////////
                       VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    function getLatestData(address _token) public view returns (uint256) {
        // prettier-ignore
        (
            /*uint80 roundID*/,
            int256 sqAnswer,
            uint256 sqStartedAt,
            /*uint256 updatedAt*/,
            /*uint80 answeredInRound*/
        ) = IChainlinkOracle(arbitrumSequencer).latestRoundData();

        // Answer == 0: Sequencer is up
        // Answer == 1: Sequencer is down
        bool isSequencerUp = sqAnswer == 0;
        require(isSequencerUp, "Sequencer is down");

        // Make sure the grace period has passed after the
        // sequencer is back up.
        uint256 timeSinceUp = block.timestamp - sqStartedAt;
        require(timeSinceUp > GRACE_PERIOD_TIME, "Grace period not over");

        (, /* uint80 roundID */ int answer /*uint startedAt*/ /*uint timeStamp*/ /*uint80 answeredInRound*/, , , ) = IChainlinkOracle(
            chainlinkOracle[_token]
        ).latestRoundData(); //in 1e8

        return formatPriceForGMToken(uint256(answer), _token);
    }

    function getTokenDecimals(address _token) public view returns (uint256) {
        return ERC20(_token).decimals();
    }

    function formatPriceForGMToken(uint256 _price, address _token) public view returns (uint256) {
        uint256 tokenDecimals = getTokenDecimals(_token);
        uint256 targetDecimal = 10 ** 30 / 10 ** tokenDecimals;
        return (_price * targetDecimal) / 10 ** 8; // 10 ** 8 is the decimal of chainlink
    }

    function getMarketTokenPrice(address marketToken) public view returns (uint256) {
        (, address indexToken, address shortToken, address longToken, ) = IGlmManager(glmManager).getGmPoolByGmToken(marketToken);

        Market.Props memory market = Market.Props({
            marketToken: marketToken,
            indexToken: indexToken,
            longToken: longToken,
            shortToken: shortToken
        });

        Price.Props memory indexTokenPrice = Price.Props({
            max: uint256(getLatestData(indexToken)),
            min: uint256(getLatestData(indexToken))
        });

        Price.Props memory longTokenPrice = Price.Props({
            //prettier ignore
            max: uint256(getLatestData(longToken)),
            min: uint256(getLatestData(longToken))
        });

        Price.Props memory shortTokenPrice = Price.Props({
            max: uint256(getLatestData(shortToken)),
            min: uint256(getLatestData(shortToken))
        });

        (int256 marketTokenPrice, ) = IReader(gmxAddresses.reader).getMarketTokenPrice(
            gmxAddresses.dataStore,
            market,
            indexTokenPrice,
            longTokenPrice,
            shortTokenPrice,
            keccak256(abi.encode("MAX_PNL_FACTOR_FOR_DEPOSITS")),
            true
        );

        return uint256(marketTokenPrice); //in 1e30
    }

    function getGlmPrice() public view returns (uint256) {
        uint256 totalAssets = IERC4626Upgradeable(glmVault).totalAssets();
        uint256 totalSupply = IERC4626Upgradeable(glmVault).totalSupply();
        if (totalAssets > 0 && totalSupply > 0) {
            return (totalAssets * 1e6) / totalSupply;
        } else {
            return 1e6;
        }
    }

    function getTokenPrice(address token) external view returns (uint256) {
        return getLatestData(token);
    }

    function calculateTokenConverstion(
        address inputGmToken,
        address outputGmToken,
        uint256 inputAmount
    ) external view returns (uint256 outputAmount) {
        uint256 inputTokenPrice = getMarketTokenPrice(inputGmToken);
        uint256 outputTokenPrice = getMarketTokenPrice(outputGmToken);
        outputAmount = (inputAmount * inputTokenPrice) / outputTokenPrice;
    }
}
