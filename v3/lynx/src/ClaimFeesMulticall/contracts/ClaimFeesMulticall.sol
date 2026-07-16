// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "@openzeppelin/contracts/access/Ownable.sol";

interface IGaugeFactory {
    function gauges() external view returns (address[] memory);
}

interface IGauge {
    function claimFees() external returns (uint claimed0, uint claimed1);
    function TOKEN() external view returns (address);
}

interface IPair {
    function claimStakingFees() external;
}

interface IVoter {
    function isAlive(address gauge) external returns (bool);
    function isGauge(address gauge) external returns (bool);
    function _epochTimestamp() external view returns (uint256);
}

interface ISplitter {
    function split() external;
    function stakingConverter() external view returns (address);
    function balanceOf() external view returns (uint256);
}

interface ISWPxNFTFeeConverter {
    function claimFees() external;
    function swap() external;
}

contract ClaimFeesMulticall is Ownable {
    /// @notice voter contract address
    address public voter;

    /// @notice gauge factory for GaugeV2 contracts
    address public gaugeFactory;

    /// @notice gauge factory for GaugeV2_CL contracts
    address public gaugeFactoryCL;

    /// @notice NFTSalesSplitter contract
    address public splitter;

    /// @notice SWPxNFTFeeConverter contract
    address public feeConverter;

    /// @notice true - claimFees called at this epoch, else - false
    mapping(uint256 => bool) public epochClaimed;

    /// @notice true - claimStakingFees called at this epoch, else - false
    mapping(uint256 => bool) public epochClaimedStaking;

    constructor(
        address _voter,
        address _gaugeFactory,
        address _gaugeFactoryCL,
        address _splitter
    ) {
        _setVoter(_voter);
        _setGaugeFactory(_gaugeFactory);
        _setGaugeFactoryCL(_gaugeFactoryCL);
        _setSplitter(_splitter);
    }

    // ownable methods

    /** @notice change VoterV3 contract address
     * @param _voter new contract address
     * @dev owner only
     */
    function setVoter(address _voter) external onlyOwner {
        _setVoter(_voter);
    }

    /** @notice change GaugeFactory contract address
     * @param _gaugeFactory new contract address
     * @dev owner only
     */
    function setGaugeFactory(address _gaugeFactory) external onlyOwner {
        _setGaugeFactory(_gaugeFactory);
    }

    /** @notice change GaugeFactoryCL contract address
     * @param _gaugeFactoryCL new contract address
     * @dev owner only
     */
    function setGaugeFactoryCL(address _gaugeFactoryCL) external onlyOwner {
        _setGaugeFactoryCL(_gaugeFactoryCL);
    }

    function setSplitter(address _splitter) external onlyOwner {
        _setSplitter(_splitter);
    }

    // view methods

    /** @notice get list of gauges (v2/CL)
     * @return gauges list for v2 pools
     * @return gaugesCL list for CL pools
     * @return totalGauges summury length of pools array
     */
    function getGauges()
        public
        view
        returns (
            address[] memory gauges,
            address[] memory gaugesCL,
            uint256 totalGauges
        )
    {
        gauges = IGaugeFactory(gaugeFactory).gauges();
        gaugesCL = IGaugeFactory(gaugeFactoryCL).gauges();
        totalGauges = gauges.length + gaugesCL.length;
    }

    /** @notice true - claimFees called at this epoch, else - false
     */
    function claimed() external view returns (bool) {
        return epochClaimed[IVoter(voter)._epochTimestamp()];
    }

    /** @notice true - claimStakingFees called at this epoch, else - false
     */
    function claimedStaking() external view returns (bool) {
        return epochClaimedStaking[IVoter(voter)._epochTimestamp()];
    }

    // public

    /// @notice call claimFees at all gauges
    function claimFees() external {
        (address[] memory gauges, address[] memory gaugesCL, ) = getGauges();

        uint256 len1 = gauges.length;
        uint256 len2 = gaugesCL.length;
        uint256 mainLen = len1 > len2 ? len1 : len2;

        for (uint256 i; i < mainLen; i++) {
            if (i < len1) _claimFees(gauges[i]);

            if (i < len2) _claimFees(gaugesCL[i]);
        }

        epochClaimed[IVoter(voter)._epochTimestamp()] = true;
    }

    /// @notice call claimFees at current gauges (from start to end index of array)
    function claimFees(uint256 start, uint256 end) external {
        require(start < end, "wrong order");

        (
            address[] memory gauges,
            address[] memory gaugesCL,
            uint totalGauges
        ) = getGauges();

        end = end > totalGauges ? totalGauges : end;
        uint256 len = gauges.length;
        for (uint256 i = start; i < end; i++) {
            if (i < len) _claimFees(gauges[i]);
            else _claimFees(gaugesCL[i - len]);
        }
    }

    /// @notice call claimStakingFees at all v2 pairs
    function claimStakingFees() external {
        (address[] memory gauges, , ) = getGauges();

        uint256 len1 = gauges.length;
        for (uint256 i; i < len1; i++) {
            _claimStakingFees(gauges[i]);
        }

        epochClaimedStaking[IVoter(voter)._epochTimestamp()] = true;
    }

    /// @notice call claimStakingFees at current v2 pairs (from start to end index of array)
    function claimStakingFees(uint256 start, uint256 end) external {
        require(start < end, "wrong order");

        (address[] memory gauges, , ) = getGauges();

        uint256 len1 = gauges.length;
        end = end > len1 ? len1 : end;
        for (uint256 i = start; i < len1; i++) {
            _claimStakingFees(gauges[i]);
        }
    }

    /// @notice call splitter if possible, else - call fee converter
    function split() external {
        uint256 splitterBalance = ISplitter(splitter).balanceOf() +
            address(splitter).balance;
            
        if (splitterBalance > 1000) {
            ISplitter(splitter).split();
        }
        else {
            ISWPxNFTFeeConverter(feeConverter).claimFees();
            ISWPxNFTFeeConverter(feeConverter).swap();
        }
    }

    // internal methods

    function _setVoter(address _voter) internal {
        require(_voter != address(0));

        voter = _voter;
    }

    function _setGaugeFactory(address _gaugeFactory) internal {
        require(_gaugeFactory != address(0));

        gaugeFactory = _gaugeFactory;
    }

    function _setGaugeFactoryCL(address _gaugeFactoryCL) internal {
        require(_gaugeFactoryCL != address(0));

        gaugeFactoryCL = _gaugeFactoryCL;
    }

    function _setSplitter(address _splitter) internal {
        require(_splitter != address(0));

        feeConverter = ISplitter(_splitter).stakingConverter();
        require(feeConverter != address(0));

        splitter = _splitter;
    }

    function _claimFees(address gauge) internal {
        if (IVoter(voter).isAlive(gauge) && IVoter(voter).isGauge(gauge))
            IGauge(gauge).claimFees();
    }

    function _claimStakingFees(address gauge) internal {
        if (IVoter(voter).isAlive(gauge) && IVoter(voter).isGauge(gauge))
            IPair(IGauge(gauge).TOKEN()).claimStakingFees();
    }
}
