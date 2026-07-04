pragma solidity ^0.8.9;

import "./PositionBondCommit.sol";

contract PositionBond005 is PositionBondCommit {
    uint256 public hardcap;
    constructor(
        string memory bondName_,
        string memory bondSymbol_,
        address underlyingAsset_,
        uint256 collateralAmount_,
        address faceAsset_,
        uint256 percentFaceValue_,
        uint256 totalSupply_,
        address holdToken_,
        uint256 hardcap_
    )
        PositionBondCommit(
            bondName_,
            bondSymbol_,
            underlyingAsset_,
            collateralAmount_,
            faceAsset_,
            percentFaceValue_,
            totalSupply_
        )
        HoldTokenAndStake(holdToken_, 0)
    {
        hardcap = hardcap_;
    }

    function _beforeCommitHook(address _buyer, uint256 _commitAmount) internal override {
        require(totalAmountCommitted+_commitAmount <= hardcap, "sold out");
    }

    function canPurchase() public view override returns (bool) {
        return _canCommit(msg.sender);
    }

    function isPurchasable(address caller)
        public
        view
        virtual
        override(PositionBondCommit)
        returns (bool)
    {
        return _canCommit(caller);
    }
}
