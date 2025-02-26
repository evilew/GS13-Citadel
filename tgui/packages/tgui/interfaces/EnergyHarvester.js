import { round, toFixed } from 'common/math';
import { formatPower } from '../format';
import { useBackend } from '../backend';
import { AnimatedNumber, Button, LabeledList, Slider, Section } from '../components';
import { Window } from '../layouts';

const POWER_MUL = 1e3;

export const EnergyHarvester = (props, context) => {
  const { act, data } = useBackend(context);
  return(
    <Window width={340} height={350}>
      <Window.Content>
        <Section title="Status">
          <LabeledList>
            <LabeledList.Item label="Power in connected wire">
              {formatPower(data.power_available)}
            </LabeledList.Item>
            <LabeledList.Item label="Current power drain">
              {formatPower(data.power_drain)}
            </LabeledList.Item>
            <LabeledList.Item label="Conversion rate (KW per credit)">
              <AnimatedNumber 
                value = {1/data.credit_conversion_rate}
                format={value => round(value, 0)}
              />
            </LabeledList.Item>
          </LabeledList>
        </Section>
        <Section title="Controls" buttons={
          (<Button 
            icon={data.active ? 'power-off' : 'times'}
            content={data.active ? 'On' : 'Off'}
            selected={data.active}
            onClick={() => act('power')}
          />)
          }
        >
          <LabeledList>
            <LabeledList.Item label="Power Drained Percent">
              <Slider
                value = {data.set_power_drain}
                minValue = {1}
                maxValue = {data.maximum_drain}
                step={1}
                stepPixelSize={200 / data.maximum_drain}
                onDrag={(e, value) => act('drain_percentage', {
                  target: value,
                })}
                />
            </LabeledList.Item>
          </LabeledList>
        </Section>
      </Window.Content>
    </Window>
  );
};