// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/*
* @author Segment Finance Team
* @notice The Segment's LGE contract has locked its THENA LP Tokens in the THENA Gauge.
*         The method to claim rewards calls IGauge(address).getReward(address(this))
*         In the Velodrome implementation, the method was permissionless, but THENA allows only the Distribution to execute the method.
*         This contract aimed to temporarily change the distribution address in the USDT-SEF gauge to be able to withdraw the rewards.
*         This contract restores the distribution address to its original state immediately after reward claims.
*/
contract THENADistributionFix {

    /// @notice  The Segment Owner, eligible to execute public methods.
    address public constant OWNER = address(0xd76D8Ca186690CA2b6E0f6e3c5282DA70fb1dF3c);

    /// @notice LGE Contract that claims rewards in `claimThenaRewards`: https://bscscan.com/address/0xF1C743Cc02EB58bdBA48cEa7137570F18B05fC12
    address public constant SEGMENT_LGE = address(0xF1C743Cc02EB58bdBA48cEa7137570F18B05fC12);

    /// @notice USDT-SEF gauge from which to claim rewards:  https://bscscan.com/address/0x891Def9E596Af27E11C94679Fbc8E0a074124859
    address public constant THENA_GAUGE_USDT_SEF = address(0x891Def9E596Af27E11C94679Fbc8E0a074124859);

    /// @notice Gauge factory for adjusting the distribution address: https://bscscan.com/address/0x2c788FE40A417612cb654b14a944cd549B5BF130
    address public constant THENA_GAUGE_FACTORY = address(0x2c788FE40A417612cb654b14a944cd549B5BF130);

    /// @notice We store the original distribution address to recover it in the next block.
    address public latestDistribution;


    /**
     * @notice Set the distribution address to the LGE contract to be able to receive its own rewards.
     */
    function setSegmentLgeAsDistributor () external {
        require(msg.sender == OWNER, "ONLY_OWNER");

        latestDistribution = getLatestDistribution();
        setDistribution(SEGMENT_LGE);
    }

    /**
     * @notice Restore the distribution address to its original value.
     */
    function restoreGaugeDistributor () external {
        require(msg.sender == OWNER, "ONLY_OWNER");
        require(latestDistribution != address(0), "LATEST_NO_SET");

        setDistribution(latestDistribution);
    }

    /// @notice Helper method for setting the distribution address.
    function setDistribution (address distro) internal {
        address[] memory gauge = new address[](1);
        gauge[0] = THENA_GAUGE_USDT_SEF;

        IThenaGaugeFactory(THENA_GAUGE_FACTORY).setDistribution(
            gauge, distro
        );
    }

    /// @notice Helper method for retrieving the original distribution address.
    function getLatestDistribution() private view returns (address) {
        address currentDistribution = IThenaGauge(THENA_GAUGE_USDT_SEF).DISTRIBUTION();
        return currentDistribution == SEGMENT_LGE ? latestDistribution : currentDistribution;
    }
}

interface IThenaGaugeFactory {
    function setDistribution(address[] memory _gauges, address distro) external;
}
interface IThenaGauge {
    function DISTRIBUTION() external view returns (address);
}
