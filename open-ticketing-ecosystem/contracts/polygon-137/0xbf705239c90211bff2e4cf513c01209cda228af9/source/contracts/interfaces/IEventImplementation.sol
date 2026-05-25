// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

interface IEventImplementation {
    enum TicketFlags {
        SCANNED, // 0
        CHECKED_IN, // 1
        INVALIDATED, // 2
        CLAIMED // 3
    }

    struct BalanceUpdates {
        address owner;
        uint64 quantity;
    }

    struct TokenData {
        address owner;
        uint40 basePrice;
        uint8 booleanFlags;
    }

    struct AddressData {
        // uint64 more than enough
        uint64 balance;
    }

    struct EventData {
        uint32 index;
        uint64 startTime;
        uint64 endTime;
        int32 latitude;
        int32 longitude;
        string currency;
        string name;
        string shopUrl;
        string imageUrl;
    }

    struct TicketAction {
        uint256 tokenId;
        bytes32 externalId; // sha256 hashed, emitted in event only.
        address to;
        uint64 orderTime;
        uint40 basePrice;
    }

    struct EventFinancing {
        uint64 palletIndex;
        address bondCouncil;
        bool financingConfigured;
        bool financingActive;
        bool primaryBlocked;
        bool secondaryBlocked;
        bool scanBlocked;
        bool claimBlocked;
    }

    event PrimaryMint(TicketAction[] ticketActions, uint256 getUsed);

    event SecondarySale(TicketAction[] ticketActions, uint256 getUsed);

    event Scanned(TicketAction[] ticketActions, uint256 getUsed);

    event CheckedIn(TicketAction[] ticketActions, uint256 getUsed);

    event Invalidated(TicketAction[] ticketActions, uint256 getUsed);

    event Claimed(TicketAction[] ticketActions, uint256 getUsed);

    event UnderWriterSet(address eventAddress, address underWriterAddress, address requester);

    event EventDataSet(EventData indexed _eventData);

    event EventDataUpdated(EventData indexed _eventData);

    event UpdateFinancing(EventFinancing indexed financing);

    function batchActions(
        TicketAction[] calldata ticketActions,
        uint8[] memory actionCounts,
        BalanceUpdates[] calldata balanceUpdates
    ) external;

    function setEventData(EventData memory _eventData) external;

    function updateEventData(EventData memory _eventData) external;

    function setFinancing(EventFinancing memory _financing) external;
}
