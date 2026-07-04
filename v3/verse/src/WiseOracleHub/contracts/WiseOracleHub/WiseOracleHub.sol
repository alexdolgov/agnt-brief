// SPDX-License-Identifier: -- WISE --

pragma solidity =0.8.21;

/**
 * @author Christoph Krpoun
 * @author René Hochmuth
 * @author Vitally Marinchenko
 */

import "./OracleHelper.sol";
import "../OwnableMaster.sol";

contract WiseOracleHub is OracleHelper, OwnableMaster {

    constructor()
        Declarations()
        OwnableMaster(msg.sender)
    {}

    /**
     * @dev Returns USD values decimals
     *  meaning that 1.00 USD <=> 1E18.
     */
    function targetDecimalsUSD()
        external
        pure
        returns (uint256)
    {
        return TARGET_DECIMALS;
    }

    /**
     * @dev Returns priceFeed latest USD value
     * by passing the underlying token address.
     */
    function latestResolver(
        address _tokenAddress
    )
        public
        view
        returns (uint256)
    {
        return priceFeed[_tokenAddress].latestAnswer();
    }

    /**
     * @dev Returns priceFeed decimals by
     * passing the underlying token address.
     */
    function decimals(
        address _tokenAddress
    )
        public
        view
        returns (uint8)
    {
        return priceFeed[_tokenAddress].decimals();
    }

    function getTokenDecimals(
        address _tokenAddress
    )
        external
        view
        returns (uint8)
    {
        return _tokenDecimals[_tokenAddress];
    }

    /**
     * @dev Returns USD value of a given token
     * amount in order of 1E18 decimal precision.
     */
    function getTokensInUSD(
        address _tokenAddress,
        uint256 _amount
    )
        external
        view
        returns (uint256)
    {
        uint8 tokenDecimals = _tokenDecimals[
            _tokenAddress
        ];

        return TARGET_DECIMALS < tokenDecimals
            ? _amount
                * latestResolver(_tokenAddress)
                / 10 ** decimals(_tokenAddress)
                / 10 ** (tokenDecimals - TARGET_DECIMALS)
            : _amount
                * 10 ** (TARGET_DECIMALS - tokenDecimals)
                * latestResolver(_tokenAddress)
                / 10 ** decimals(_tokenAddress);
    }

    /**
     * @dev Converts USD value of a token into token amount with a
     * current price. The order of the argument _usdValue is 1E18.
     */
    function getTokensFromUSD(
        address _tokenAddress,
        uint256 _usdValue
    )
        external
        view
        returns (uint256)
    {
        uint8 tokenDecimals = _tokenDecimals[
            _tokenAddress
        ];

        return TARGET_DECIMALS < tokenDecimals
            ? _usdValue
                * 10 ** (tokenDecimals - TARGET_DECIMALS)
                * 10 ** decimals(_tokenAddress)
                / latestResolver(_tokenAddress)
            : _usdValue
                * 10 ** decimals(_tokenAddress)
                / latestResolver(_tokenAddress)
                / 10 ** (TARGET_DECIMALS - tokenDecimals);
    }

    /**
     * @dev Adds priceFeed for a token.
     * Can't overwrite existing mappings.
     * Master is a timelock contract.
     */
    function addOracle(
        address _tokenAddress,
        IPriceFeed _priceFeedAddress
    )
        external
        onlyMaster
    {
        _addOracle(
            _tokenAddress,
            _priceFeedAddress
        );
    }

    /**
     * @dev Adds priceFeeds for tokens.
     * Can't overwrite existing mappings.
     * Master is a timelock contract.
     */
    function addOracleBulk(
        address[] memory _tokenAddresses,
        IPriceFeed[] memory _priceFeedAddresses
    )
        external
        onlyMaster
    {
        for (uint8 i = 0; i < _tokenAddresses.length; ++i) {
            _addOracle(
                _tokenAddresses[i],
                _priceFeedAddresses[i]
            );
        }
    }

    /**
     * @dev Looks at the maximal last 50 rounds and
     * takes second highest value to avoid counting
     * offline time of chainlink as valid heartbeat.
     */
    function recalibratePreview(
        address _tokenAddress
    )
        external
        view
        returns (uint256)
    {
        return _recalibratePreview(
            _tokenAddress
        );
    }

    /**
     * @dev Check if chainLink feed was
     * updated within expected timeFrame.
     */
    function chainLinkIsDead(
        address _tokenAddress
    )
        external
        view
        returns (bool)
    {
        uint256 upd = latestRoundData(
            _tokenAddress
        );

        upd = block.timestamp > upd
            ? block.timestamp - upd
            : block.timestamp;

        return upd > heartBeat[_tokenAddress];
    }

    /**
     * @dev Recalibrates expected
     * heartbeat for a pricing feed.
     */
    function recalibrate(
        address _tokenAddress
    )
        external
    {
        _recalibrate(
            _tokenAddress
        );
    }

    /**
     * @dev Bulk function to recalibrate
     * the heartbeat for several tokens.
     */
    function recalibrateBulk(
        address[] memory _tokenAddresses
    )
        external
    {
        for (uint256 i = 0; i < _tokenAddresses.length; ++i) {
            _recalibrate(
                _tokenAddresses[i]
            );
        }
    }

    /**
     * @dev Sets previous token value
     * with current chainLink price.
     */
    function setPreviousValue(
        address _tokenAddress
    )
        external
    {
        previousValue[_tokenAddress] = latestResolver(
            _tokenAddress
        );
    }
}
