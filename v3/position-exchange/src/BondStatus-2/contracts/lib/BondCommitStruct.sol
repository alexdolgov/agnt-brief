pragma solidity ^0.8.0;

library BondCommitStruct {
    struct BondCommitted {
        uint256 amountCommitted;
        bool isDistributed;
    }

    function increaseAmountCommit(
        BondCommitStruct.BondCommitted storage self,
        uint256 amountCommit
    ) internal {
        self.amountCommitted += amountCommit;
    }

    function updateDistributed(BondCommitStruct.BondCommitted storage self)
        internal
    {
        self.isDistributed = true;
    }

    function alreadyDistributed(BondCommitStruct.BondCommitted storage self)
        internal
        view
        returns (bool)
    {
        return self.isDistributed;
    }

    function isNoAmountCommitted(BondCommitStruct.BondCommitted storage self)
        internal
        view
        returns (bool)
    {
        return self.amountCommitted > 0;
    }
}
