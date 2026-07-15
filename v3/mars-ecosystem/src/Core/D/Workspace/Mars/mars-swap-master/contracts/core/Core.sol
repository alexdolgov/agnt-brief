// SPDX-License-Identifier: MIT

pragma solidity ^0.7.6;
pragma experimental ABIEncoderV2;

import "./Permissions.sol";
import "../interfaces/ICore.sol";
import "../base/XMSToken.sol";
import "../base/USDMToken.sol";

/// @title Source of truth for USDM Protocol
/// @author USDM Protocol
/// @notice Maintains roles, access control, usdm, xms, genesisGroup, and the XMS treasury
contract Core is ICore, Permissions {
    /// @notice XMS support ratio
    uint256 public override xmsSupportRatio = 250_000;
    /// @notice XMS support ratio precision
    uint256 public override xmsSupportRatioPrecision = 1e5;

    /// @notice The address of the USDM contract
    IUSDMToken public override usdm;

    /// @notice The address of the XMS contract
    IXMSToken public override xms;

    /// @notice The address of the GenesisGroup contract
    address public override genesisGroup;
    /// @notice Determines whether in genesis period or not
    bool public override hasGenesisGroupCompleted;

    /// @notice Governance contract process lp
    address[] public override approvedPairs;
    mapping(address => bool) public override approvedPairExisted;
    mapping(address => address[]) public override approvedContracts;
    mapping(address => mapping(address => bool))
        public
        override approvedContractExisted;

    constructor() {
        _setupGovernor(msg.sender);
    }

    /// @notice Sets XMS support ratio, x * 10 ** 5
    /// @param _xmsSupportRatio New XMS support ratio
    function setXMSSupportRatio(uint256 _xmsSupportRatio)
        external
        override
        onlyGovernor
    {
        _setXMSSupportRatio(_xmsSupportRatio);
    }

    /// @notice Sets USDM address to a new address
    /// @param token New usdm address
    function setUSDM(address token) external override onlyGovernor {
        _setUSDM(token);
    }

    /// @notice Sets XMS address to a new address
    /// @param token New xms address
    function setXMS(address token) external override onlyGovernor {
        _setXMS(token);
    }

    /// @notice Sets Genesis Group address
    /// @param _genesisGroup New genesis group address
    function setGenesisGroup(address _genesisGroup)
        external
        override
        onlyGovernor
    {
        genesisGroup = _genesisGroup;
        emit GenesisGroupUpdate(_genesisGroup);
    }

    /// @notice Sends XMS tokens from treasury to an address
    /// @param to The address to send XMS to
    /// @param amount The amount of XMS to send
    function allocateXMS(address to, uint256 amount)
        external
        override
        onlyGovernor
    {
        allocateToken(address(xms), to, amount);
    }

    /// @notice Sends X tokens from treasury to an address
    /// @param _token The X token
    /// @param to The address to send X to
    /// @param amount The amount of X to send
    function allocateToken(
        address _token,
        address to,
        uint256 amount
    ) public override onlyGovernor {
        IERC20 token = IERC20(_token);
        require(
            token.balanceOf(address(this)) >= amount,
            "Core::allocateToken: Not enough token"
        );

        token.transfer(to, amount);

        emit TokenAllocation(to, amount);
    }

    /// @notice Approve XMS tokens from treasury to an address
    /// @param to The address to approve XMS to
    /// @param amount The amount of XMS to approve
    function approveXMS(address to, uint256 amount)
        public
        override
        onlyGovernor
    {
        approveToken(address(xms), to, amount);
    }

    /// @notice Approve X tokens from treasury to an address
    /// @param _token The X token
    /// @param to The address to approve X to
    /// @param amount The amount of X to approve
    function approveToken(
        address _token,
        address to,
        uint256 amount
    ) public override onlyGovernor {
        IERC20 token = IERC20(_token);

        token.approve(to, amount);

        emit TokenApprove(to, amount);
    }

    /// @notice Marks the end of the genesis period
    /// @dev Can only be called once
    function completeGenesisGroup() external override {
        require(
            !hasGenesisGroupCompleted,
            "Core::completeGenesisGroup: Genesis Group already complete"
        );
        require(
            msg.sender == genesisGroup,
            "Core::completeGenesisGroup: Caller is not Genesis Group"
        );

        hasGenesisGroupCompleted = true;

        // solhint-disable-next-line not-rely-on-time
        emit GenesisPeriodComplete(block.timestamp);
    }

    function getApprovedPairsLength() public view override returns (uint256) {
        return approvedPairs.length;
    }

    function getApprovedContractsLength(address _pair)
        public
        view
        override
        returns (uint256)
    {
        return approvedContracts[_pair].length;
    }

    function setApprovedPairAndContract(address _pair, address _contract)
        public
        override
        onlyGovernor
    {
        require(
            !approvedContractExisted[_pair][_contract],
            "Core::setApprovedPairAndContract: Exist"
        );
        if (!approvedPairExisted[_pair]) {
            approvedPairs.push(_pair);
            approvedPairExisted[_pair] = true;
        }
        address[] storage contracts = approvedContracts[_pair];
        contracts.push(_contract);
        approvedContractExisted[_pair][_contract] = true;
    }

    function removeApprovedPairAndContract(address _pair, address _contract)
        public
        override
        onlyGovernor
    {
        require(
            approvedContractExisted[_pair][_contract],
            "Core::setApprovedPairAndContract: Not exist"
        );
        address[] storage contracts = approvedContracts[_pair];
        uint256 idx_i;
        for (uint256 i; i < contracts.length; i++) {
            if (contracts[i] == _contract) {
                idx_i = i;
                break;
            }
        }
        contracts[idx_i] = contracts[contracts.length - 1];
        contracts.pop();
        if (contracts.length == 0) {
            uint256 idx_j;
            for (uint256 j; j < approvedPairs.length; j++) {
                if (approvedPairs[j] == _pair) {
                    idx_j = j;
                    break;
                }
            }
            approvedPairs[idx_j] = approvedPairs[approvedPairs.length - 1];
            approvedPairs.pop();
            delete approvedPairExisted[_pair];
        }
        delete approvedContractExisted[_pair][_contract];
    }

    function _setXMSSupportRatio(uint256 _xmsSupportRatio) internal {
        xmsSupportRatio = _xmsSupportRatio;
        emit XMSSupportRatioUpdate(_xmsSupportRatio);
    }

    function _setUSDM(address token) internal {
        usdm = IUSDMToken(token);
        emit USDMUpdate(token);
    }

    function _setXMS(address token) internal {
        xms = IXMSToken(token);
        emit XMSUpdate(token);
    }
}
