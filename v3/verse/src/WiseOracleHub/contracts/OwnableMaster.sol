// SPDX-License-Identifier: -- WISE --

pragma solidity =0.8.21;

error NotMaster();
error NotProposed();

contract OwnableMaster {

    address public master;
    address public proposedMaster;

    address constant ZERO_ADDRESS = address(0x0);

    modifier onlyProposed() {
        _onlyProposed();
        _;
    }

    function _onlyMaster()
        private
        view
    {
        if (msg.sender == master) {
            return;
        }

        revert NotMaster();
    }

    modifier onlyMaster() {
        _onlyMaster();
        _;
    }

    function _onlyProposed()
        private
        view
    {
        if (msg.sender == proposedMaster) {
            return;
        }

        revert NotProposed();
    }

    event ProposedOwner(
        address proposed,
        uint256 timestamp
    );

    event ClaimedOwnership(
        address master,
        uint256 timestamp
    );

    constructor(
        address _master
    ) {
        master = _master;
    }

    function proposeOwner(
        address _proposedOwner
    )
        external
        onlyMaster
    {
        proposedMaster = _proposedOwner;

        emit ProposedOwner(
            _proposedOwner,
            block.timestamp
        );
    }

    function claimOwnership()
        external
        onlyProposed
    {
        master = proposedMaster;

        emit ClaimedOwnership(
            proposedMaster,
            block.timestamp
        );
    }

    function renounceOwnership()
        external
        onlyMaster
    {
        master = ZERO_ADDRESS;
        proposedMaster = ZERO_ADDRESS;
    }
}