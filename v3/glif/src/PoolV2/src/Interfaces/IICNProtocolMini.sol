// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

interface IICNProtocolMini {
    error InvalidScalerNode();

    enum ProtocolScalerNodeStatus {
        None,
        Registered,
        Active,
        Booked,
        Offboarded
    }

    enum LocationCode {
        AFG,
        ALA,
        ALB,
        DZA,
        ASM,
        AND,
        AGO,
        AIA,
        ATA,
        ATG,
        ARG,
        ARM,
        ABW,
        AUS,
        AUT,
        AZE,
        BHS,
        BHR,
        BGD,
        BRB,
        BLR,
        BEL,
        BLZ,
        BEN,
        BMU,
        BTN,
        BOL,
        BES,
        BIH,
        BWA,
        BVT,
        BRA,
        IOT,
        BRN,
        BGR,
        BFA,
        BDI,
        CPV,
        KHM,
        CMR,
        CAN,
        CYM,
        CAF,
        TCD,
        CHL,
        CHN,
        CXR,
        CCK,
        COL,
        COM,
        COG,
        COD,
        COK,
        CRI,
        CIV,
        HRV,
        CUB,
        CUW,
        CYP,
        CZE,
        DNK,
        DJI,
        DMA,
        DOM,
        ECU,
        EGY,
        SLV,
        GNQ,
        ERI,
        EST,
        SWZ,
        ETH,
        FLK,
        FRO,
        FJI,
        FIN,
        FRA,
        GUF,
        PYF,
        ATF,
        GAB,
        GMB,
        GEO,
        DEU,
        GHA,
        GIB,
        GRC,
        GRL,
        GRD,
        GLP,
        GUM,
        GTM,
        GGY,
        GIN,
        GNB,
        GUY,
        HTI,
        HMD,
        VAT,
        HND,
        HKG,
        HUN,
        ISL,
        IND,
        IDN,
        IRN,
        IRQ,
        IRL,
        IMN,
        ISR,
        ITA,
        JAM,
        JPN,
        JEY,
        JOR,
        KAZ,
        KEN,
        KIR,
        PRK,
        KOR,
        KWT,
        KGZ,
        LAO,
        LVA,
        LBN,
        LSO,
        LBR,
        LBY,
        LIE,
        LTU,
        LUX,
        MAC,
        MDG,
        MWI,
        MYS,
        MDV,
        MLI,
        MLT,
        MHL,
        MTQ,
        MRT,
        MUS,
        MYT,
        MEX,
        FSM,
        MDA,
        MCO,
        MNG,
        MNE,
        MSR,
        MAR,
        MOZ,
        MMR,
        NAM,
        NRU,
        NPL,
        NLD,
        NCL,
        NZL,
        NIC,
        NER,
        NGA,
        NIU,
        NFK,
        MKD,
        MNP,
        NOR,
        OMN,
        PAK,
        PLW,
        PSE,
        PAN,
        PNG,
        PRY,
        PER,
        PHL,
        PCN,
        POL,
        PRT,
        PRI,
        QAT,
        REU,
        ROU,
        RUS,
        RWA,
        BLM,
        SHN,
        KNA,
        LCA,
        MAF,
        SPM,
        VCT,
        WSM,
        SMR,
        STP,
        SAU,
        SEN,
        SRB,
        SYC,
        SLE,
        SGP,
        SXM,
        SVK,
        SVN,
        SLB,
        SOM,
        ZAF,
        SGS,
        SSD,
        ESP,
        LKA,
        SDN,
        SUR,
        SJM,
        SWE,
        CHE,
        SYR,
        TWN,
        TJK,
        TZA,
        THA,
        TLS,
        TGO,
        TKL,
        TON,
        TTO,
        TUN,
        TUR,
        TKM,
        TCA,
        TUV,
        UGA,
        UKR,
        ARE,
        GBR,
        USA,
        UMI,
        URY,
        UZB,
        VUT,
        VEN,
        VNM,
        VGB,
        VIR,
        WLF,
        ESH,
        YEM,
        ZMB,
        ZWE
    }

    struct ScalerNode {
        uint256 status; // ScalerNodeStatus enum
        uint256 creationDate;
        string name;
        uint256 totalCapacity;
        uint256 utilizedCapacity;
        uint256 hpId;
        LocationCode location;
        string clusterId;
        uint256 reservationPrice;
        uint256 bookingPrice; // deprecated
        uint256 nodeRewardShare;
        string hwClass;
        address daemonAddress;
        uint256 collateralAmount;
        uint256 commitmentDuration;
        uint256 commitmentStart;
        address spIdUnused; // deprecated
        uint256 activationEra;
        uint256 startBookingPeriod; // deprecated
        uint256 bookingPeriod; // deprecated
        uint256 spId;
    }

    struct UserDelegation {
        uint256 availableLockedTokens;
        uint256 apyScalingFactor;
        uint256 unlockTimestamp;
        NodeDelegation[] nodeDelegations;
    }

    struct NodeDelegation {
        uint256 nodeId;
        uint256 amount;
        uint256 undelegationAllowedAfterTimestamp;
        uint256 reclaimAllowedAfterEra;
        uint256 delegatorBaseIncentiveAccumulationCheckpoint;
        uint256 nodeRewardAccumulationPerICNTCheckpoint;
    }

    struct PendingUserRewardClaims {
        uint256 amount;
        uint256 unlockTimestamp;
    }

    function unclaimedDelegationRewards(address delegator, uint256 userDelegationIndex, uint256 nodeDelegationIndex)
        external
        view
        returns (uint256);

    function initiateDelegationRewardsClaim(uint256 userDelegationIndex, uint256 nodeDelegationIndex) external;

    function undelegateCollateral(uint256 userDelegationIndex, uint256 nodeDelegationIndex) external;

    function reclaimUndelegatedCollateral(uint256 userDelegationIndex, uint256 nodeDelegationIndex) external;

    function getDelegation(address delegator, uint256 userDelegationIndex) external view returns (UserDelegation memory);

    function getDelegations(address delegator) external view returns (UserDelegation[] memory);

    function getPendingDelegatorRewardsClaims(address delegator) external view returns (PendingUserRewardClaims[] memory);

    function withdrawUnlockedDelegatedTokens(uint256 userDelegationIndex, uint256 amount) external;

    function delegateCollateral(uint256 nodeID, uint256 amount, uint256 lockupDuration) external;

    function delegateLockedCollateral(uint256 nodeId, uint256 amount, uint256 lockedDelegationIndex) external;

    function claimDelegationRewards(uint256 rewardIdx) external;

    function getAllowRewardClaimDelayAfterStakingInSeconds() external view returns (uint256);

    function calculateMaxApy(uint256 collateralizationRatio) external view returns (uint256);

    function getTotalDelegatedICNT() external view returns (uint256);

    function getLastRewardCommitmentTimestamp() external view returns (uint256);

    function getAllowReclaimDelayAfterUnstakeInEras() external view returns (uint256);

    function getProtocolScalerNodeStatus(uint256 scalerNodeId) external view returns (ProtocolScalerNodeStatus);

    function getScalerNode(uint256 scalerNodeId) external view returns (ScalerNode memory);

    function getNodeTotalDelegatedICNT(uint256 nodeId) external view returns (uint256);
}
