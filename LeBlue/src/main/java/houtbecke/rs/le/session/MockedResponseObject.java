package houtbecke.rs.le.session;

public class MockedResponseObject implements MockedResponse {

    final private String[] mockedResultValues;

    final private Event[] nextMockedEvents;

    @Override
    public String[] getMockedResultValues() {
        return mockedResultValues;
    }

    @Override
    public Event[] getNextMockedEvents() {
        return nextMockedEvents;
    }

    int pos = -1;
    String value = null;

    public void forArguments(String argument, int pos) {
        this.pos = pos;
        this.value = argument;
    }

    boolean selfDestroying = false;
    @Override
    public boolean isSelfDestroying() {
        return selfDestroying;
    }

    public void destroyAfterUse() {
        selfDestroying = true;
    }

    @Override
    public boolean isForArguments(String[] values) {
        if (pos == -1)
            return true;
        if (pos >= values.length)
            return false;

        if (value == null)
            return values[pos] == null;

        return value.equals(values[pos]);
    }

    public MockedResponseObject(Event nextMockedEvent) {
        this(new Event[] {nextMockedEvent}, null);
    }

    public MockedResponseObject(String... mockedResultValues) {
        this (new Event[]{}, mockedResultValues);
    }

    public MockedResponseObject(Event nextMockedEvent, String[] mockedResultValues) {
        this(new Event[]{nextMockedEvent}, mockedResultValues);
    }

    public MockedResponseObject(Event... nextMockedEvents) {
        this(nextMockedEvents, new String[] {});
    }

    public MockedResponseObject(Event nextMockedEvents[], String[] mockedResultValues) {
        this.mockedResultValues = mockedResultValues == null ? new String[] {} : mockedResultValues;
        this.nextMockedEvents = nextMockedEvents;
    }
}
